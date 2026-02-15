#!/bin/bash
# Full Deployment Check Mechanism
# Verifies end-to-end briefing system functionality

echo "🔍 FULL DEPLOYMENT CHECK MECHANISM"
echo "================================="

# Check 1: Verify local briefing files exist
echo "✅ Checking local briefing files..."
if [ -f "_posts/$(date +%Y-%m-%d)-0930-three-domain-briefing.md" ]; then
    echo "   ✅ Latest briefing file exists locally"
else
    echo "   ❌ Latest briefing file missing locally"
    exit 1
fi

# Check 2: Verify index.html contains recent briefings
echo "✅ Checking index.html structure..."
if grep -q "$(date +%Y-%m-%d)" index.html; then
    echo "   ✅ Index contains today's briefings"
else
    echo "   ❌ Index missing today's briefings"
    exit 1
fi

# Check 3: Attempt to verify remote accessibility (this is the critical check)
echo "✅ Testing remote website accessibility..."
WEBSITE_URL="https://weihwang78-cloud.github.io/ai-briefings/"
HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" "$WEBSITE_URL")

if [ "$HTTP_CODE" = "200" ]; then
    echo "   ✅ Website accessible (HTTP $HTTP_CODE)"
    echo "   🎉 FULL DEPLOYMENT SUCCESSFUL!"
    exit 0
elif [ "$HTTP_CODE" = "404" ]; then
    echo "   ❌ Website returns 404 error"
    echo "   🔧 DEPLOYMENT ISSUE DETECTED!"
    exit 1
else
    echo "   ⚠️ Website returns HTTP $HTTP_CODE"
    echo "   🔍 INVESTIGATION REQUIRED"
    exit 1
fi