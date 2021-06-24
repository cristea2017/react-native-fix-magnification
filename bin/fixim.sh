#!/usr/bin/env bash

if grep -qF " kCAFilterNearest;" node_modules/react-native/Libraries/Image/RCTImageView.mm; then
    echo "Image already fixed"
    echo "Done"
else
    echo "Fix images - need to fix"
    HUYDEV=" _imageView.layer.minificationFilter = kCAFilterTrilinear;"
 
    HUYFIX=" _imageView.layer.minificationFilter = kCAFilterNearest;"
    sed -ie "s/${HUYDEV}/${HUYFIX}/" node_modules/react-native/Libraries/Image/RCTImageView.mm

    echo "one more time"
    HUYDEV1=" _imageView.layer.magnificationFilter = kCAFilterTrilinear;"
 
    HUYFIX1=" _imageView.layer.magnificationFilter = kCAFilterNearest;"
    sed -ie "s/${HUYDEV1}/${HUYFIX1}/" node_modules/react-native/Libraries/Image/RCTImageView.mm

    echo "Done"
fi
# added support for old version of react-native
if grep -qF " kCAFilterNearest;" node_modules/react-native/Libraries/Image/RCTImageView.m; then
    echo "Image already fixed"
    echo "Done"
else
    echo "Fix images - need to fix"
    HUYDEV=" _imageView.layer.minificationFilter = kCAFilterTrilinear;"
 
    HUYFIX=" _imageView.layer.minificationFilter = kCAFilterNearest;"
    sed -ie "s/${HUYDEV}/${HUYFIX}/" node_modules/react-native/Libraries/Image/RCTImageView.m

    echo "one more time"
    HUYDEV1=" _imageView.layer.magnificationFilter = kCAFilterTrilinear;"
 
    HUYFIX1=" _imageView.layer.magnificationFilter = kCAFilterNearest;"
    sed -ie "s/${HUYDEV1}/${HUYFIX1}/" node_modules/react-native/Libraries/Image/RCTImageView.m

    echo "Done"
fi
