# 22816454

xcodebuild fails intermittently and reports errors about incorrect minimum deployment target

## Summary:
xcodebuild sometimes reports errors of the nature "module file's minimum deployment target is X" where X is one of "ios8.4 v8.4", "ios9.0 v9.0", or "OS X v10.11" where the reported minimum deployment target is higher than the actual minimum deployment target of the module.

Retrying the same build command eventually causes the build to succeed.

## Steps to Reproduce:
1. See this Travis build failure: https://travis-ci.org/paulyoung/MinimumDeploymentTargetBug/builds/81733277#L444
2. To reproduce, clone https://github.com/paulyoung/MinimumDeploymentTargetBug
3. Run ./script/build
4. Repeat #2 until the build fails. If rdar://20490378 is encountered, retry until the expected failure occurs.

## Expected Results:
The build does not fail.

## Actual Results:
The build fails intermittently.

## Version:
Version 7.0 (7A220)

## Notes:
Between this issue and [rdar://20490378](http://www.openradar.me/20490378) the build failures are so frequent that xcodebuild (and therefore CI) is basically useless.

***

We need more information to investigate this issue.

The attached project is missing the ImgFlo and Crypto projects, which are required to build it; thus, we cannot reproduce this. Can you please attach the files needed to reproduce this?

Please provide your response or results by updating your bug report.

***

Please check the latest version of the project which includes a file located at ./script/update, to be run between steps 2 and 3.

Alternatively, use the --recursive flag when running git clone in step 2.

***

It appears there was an issue with your attachments and they are no longer available on this report. Could you please re-upload the files to this bug report so we can continue to further investigate this issue?

Please provide your response or results by updating your bug report.

***

There were no attachments. Everything is available on GitHub, but here's a zip file containing the current state of the project.

'MinimumDeploymentTargetBug.zip' was successfully uploaded.
