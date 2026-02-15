# Proper Deployment Workflow Skill

## Overview
This skill defines the mandatory pre-deployment verification process that must be completed before any go-live declaration.

## Required Steps

### 1. Local Pre-Deployment Testing
- Build website locally using the same process as production
- Verify all files are generated correctly
- Test all internal links and navigation
- Validate template rendering and styling

### 2. Browser Quality Verification  
- Deploy to staging environment (or production if no staging)
- Open actual web browser and navigate to the live URL
- Verify all content displays correctly
- Test all interactive elements and links
- Confirm mobile responsiveness
- Check loading performance

### 3. End-to-End Validation
- Verify data flows from source to final presentation
- Confirm all team member content is properly integrated
- Test cross-domain synthesis functionality
- Validate timestamp accuracy and update cycles

### 4. Documentation and Approval
- Document test results with screenshots
- Get explicit approval before go-live declaration
- Record deployment verification in logs
- Update procedures based on lessons learned

## Critical Requirements
- **NO GO-LIVE WITHOUT BROWSER VERIFICATION**
- **ALL LINKS MUST BE TESTED IN ACTUAL BROWSER**
- **MOBILE AND DESKTOP TESTING REQUIRED**
- **PERFORMANCE AND FUNCTIONALITY CONFIRMED**

## Failure Prevention
- Implement automated checks where possible
- Create deployment checklists
- Establish clear go/no-go criteria
- Maintain rollback procedures

## Continuous Improvement
- Analyze deployment failures
- Update procedures based on issues found
- Train team members on proper workflow
- Regularly review and refine the process