* creating a news bite is slow because of the image uploading to S3. Split the action into 2: First one creates the news bite. the second is called via ajax from the client, uploads the image and returns success.
* content changes
* add an expiration task called from uptimeRobot every week/day. The task deletes news bites older than X, or with no activity.

* fix appearance on mobile phones:
    * iphone4 3.5" screen doesn't display the save button
    * the margin to the top of the screen is too big


