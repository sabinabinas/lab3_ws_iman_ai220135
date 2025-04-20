<?php
$target_hash = "5e884898da28047151d0e56f8dc6292773603d0d"; // SHA1 of "password"
$wordlist = file("common-passwords.txt", FILE_IGNORE_NEW_LINES);

foreach ($wordlist as $word) {
    if (sha1($word) === $target_hash) {
        echo "Match found: $word\n";
        break;
    }
}
?>
