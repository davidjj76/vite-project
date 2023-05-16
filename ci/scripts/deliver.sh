#!/usr/bin/env sh

echo 'The following "npm" command builds your React application'
echo 'for the best performance.'
set -x
npm run build
set +x

echo 'The following "npm" command runs your React application'
echo 'as a background process (i.e. asynchronously). Otherwise, this command'
echo 'can pause running builds of CI/CD applications indefinitely. "npm run preview"'
echo 'is followed by another command that retrieves the process ID (PID) value'
echo 'of the previously run process (i.e. "npm run preview") and writes this value to'
echo 'the file ".pidfile".'
set -x
npm run preview &
sleep 1
echo $! > .pidfile
set +x

echo 'Now...'
echo 'Visit http://localhost:3000 to see your React application in action.'
echo '(This is why you specified the "args ''-p 3000:4173''" parameter when you'
echo 'created your initial Pipeline as a Jenkinsfile.)'