---
title: 'Publish posts using Blogger API in PHP'
date: 2021-08-09T10:41:00.034-07:00
draft: false
url: /2021/08/publish-posts-using-blogger-api-in-php.html
categories: ["note"]
tags: 
- blogger
- php
---

This is how to create a blogpost using the [Google Client Library for PHP](https://github.com/googleapis/google-api-php-client).

To setup:

1.  Go to [https://console.developers.google.com](https://console.developers.google.com/)
2.  Add an project, and tap "Credentials"
3.  Tap "Create data" and create an Client-ID OAuth
4.  Choose the "Webapp" and enter the path to your server in the "Authorized diversion URIs" textbox
5.  Hit "Create", and hit OK
6.  Click on the Client-ID you just generated
7.  Click "Download JSON"
8.  Download the file, and rename it to `client_secret.json`

Use this script to create and publish posts. Make sure to first enter the path to your `client_secret.json`.

```
<?php  
// This script creates a post  
// Made by Robin Boers  
  
// load Google Api  
require_once '../api/vendor/autoload.php';  
  
session_start();  
  
$redirect_uri = 'http://' . $_SERVER['HTTP_HOST'] . $_SERVER['PHP_SELF'];  
  
// Authenticate user with OAuth   
$client = new Google_Client();  
$client->setAuthConfig('/path/to/client_secret.json');  
$client->setApplicationName('Example App');  
$client->setRedirectUri($redirect_uri);  
$client->setScopes(array('https://www.googleapis.com/auth/blogger'));   
  
if (!isset($_SESSION['access_token']) && isset($_GET['code'])) {  
    $client->authenticate($_GET['code']);  
    $access_token = $client->getAccessToken();  
    $_SESSION['access_token'] = $access_token;  
}  
  
if (isset($_SESSION['access_token']) && $_SESSION['access_token']) {  
      
    // First set the accesstoken  
    $client->setAccessToken($_SESSION['access_token']);  
  
    $blogger = new Google_Service_Blogger($client);  
  
    // Get blog information  
    $blog = $blogger->blogs->getByUrl('http://stupidstuffwastaken.blogspot.com'); // Replace this URI with your blog's URI  
    $blogId = $blog->getId();  
    $blogName  = $blog->getName();  
  
    $postId = "651261343944639929"; // If you want to update a post  
  
     // Creating post  
     $mypost = new Google_Service_Blogger_Post();  
     $mypost->setTitle("Example heading");  
     $mypost->setContent("Lorem ipsum dolor sit amet, consectetur adipiscing elit.");  
  
     $data = $blogger->posts->insert($blogId, $mypost); // or update post like this: $data = $blogger->posts->update($blogId, $postId, $mypost);  
     var_dump($data);  
}  
?>
```