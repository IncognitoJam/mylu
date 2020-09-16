.class public Lorg/reactnative/camera/RNCameraViewHelper;
.super Ljava/lang/Object;
.source "RNCameraViewHelper.java"


# static fields
.field public static final exifTags:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x81

    .line 29
    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "string"

    const-string v2, "Artist"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "int"

    const-string v3, "BitsPerSample"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const-string v3, "Compression"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const-string v3, "Copyright"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v0, v4

    const-string v3, "DateTime"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v0, v4

    const-string v3, "ImageDescription"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v0, v4

    const-string v3, "ImageLength"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v0, v4

    const-string v3, "ImageWidth"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v0, v4

    const-string v3, "JPEGInterchangeFormat"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v0, v4

    const-string v3, "JPEGInterchangeFormatLength"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v0, v4

    const-string v3, "Make"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v0, v4

    const-string v3, "Model"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v0, v4

    const-string v3, "Orientation"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc

    aput-object v3, v0, v4

    const-string v3, "PhotometricInterpretation"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd

    aput-object v3, v0, v4

    const-string v3, "PlanarConfiguration"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xe

    aput-object v3, v0, v4

    const-string v3, "double"

    const-string v4, "PrimaryChromaticities"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xf

    aput-object v4, v0, v5

    const-string v4, "ReferenceBlackWhite"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    aput-object v4, v0, v5

    const-string v4, "ResolutionUnit"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x11

    aput-object v4, v0, v5

    const-string v4, "RowsPerStrip"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x12

    aput-object v4, v0, v5

    const-string v4, "SamplesPerPixel"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x13

    aput-object v4, v0, v5

    const-string v4, "Software"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x14

    aput-object v4, v0, v5

    const-string v4, "StripByteCounts"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x15

    aput-object v4, v0, v5

    const-string v4, "StripOffsets"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x16

    aput-object v4, v0, v5

    const-string v4, "TransferFunction"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x17

    aput-object v4, v0, v5

    const-string v4, "WhitePoint"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x18

    aput-object v4, v0, v5

    const-string v4, "XResolution"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x19

    aput-object v4, v0, v5

    const-string v4, "YCbCrCoefficients"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1a

    aput-object v4, v0, v5

    const-string v4, "YCbCrPositioning"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1b

    aput-object v4, v0, v5

    const-string v4, "YCbCrSubSampling"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1c

    aput-object v4, v0, v5

    const-string v4, "YResolution"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1d

    aput-object v4, v0, v5

    const-string v4, "ApertureValue"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1e

    aput-object v4, v0, v5

    const-string v4, "BrightnessValue"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f

    aput-object v4, v0, v5

    const-string v4, "CFAPattern"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x20

    aput-object v4, v0, v5

    const-string v4, "ColorSpace"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x21

    aput-object v4, v0, v5

    const-string v4, "ComponentsConfiguration"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x22

    aput-object v4, v0, v5

    const-string v4, "CompressedBitsPerPixel"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x23

    aput-object v4, v0, v5

    const-string v4, "Contrast"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    aput-object v4, v0, v5

    const-string v4, "CustomRendered"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x25

    aput-object v4, v0, v5

    const-string v4, "DateTimeDigitized"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x26

    aput-object v4, v0, v5

    const-string v4, "DateTimeOriginal"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x27

    aput-object v4, v0, v5

    const-string v4, "DeviceSettingDescription"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x28

    aput-object v4, v0, v5

    const-string v4, "DigitalZoomRatio"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x29

    aput-object v4, v0, v5

    const-string v4, "ExifVersion"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2a

    aput-object v4, v0, v5

    const-string v4, "ExposureBiasValue"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2b

    aput-object v4, v0, v5

    const-string v4, "ExposureIndex"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2c

    aput-object v4, v0, v5

    const-string v4, "ExposureMode"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2d

    aput-object v4, v0, v5

    const-string v4, "ExposureProgram"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2e

    aput-object v4, v0, v5

    const-string v4, "ExposureTime"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    aput-object v4, v0, v5

    const-string v4, "FNumber"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x30

    aput-object v4, v0, v5

    const-string v4, "FileSource"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x31

    aput-object v4, v0, v5

    const-string v4, "Flash"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x32

    aput-object v4, v0, v5

    const-string v4, "FlashEnergy"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x33

    aput-object v4, v0, v5

    const-string v4, "FlashpixVersion"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x34

    aput-object v4, v0, v5

    const-string v4, "FocalLength"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x35

    aput-object v4, v0, v5

    const-string v4, "FocalLengthIn35mmFilm"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x36

    aput-object v4, v0, v5

    const-string v4, "FocalPlaneResolutionUnit"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x37

    aput-object v4, v0, v5

    const-string v4, "FocalPlaneXResolution"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x38

    aput-object v4, v0, v5

    const-string v4, "FocalPlaneYResolution"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x39

    aput-object v4, v0, v5

    const-string v4, "GainControl"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3a

    aput-object v4, v0, v5

    const-string v4, "ISOSpeedRatings"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3b

    aput-object v4, v0, v5

    const-string v4, "ImageUniqueID"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3c

    aput-object v4, v0, v5

    const-string v4, "LightSource"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3d

    aput-object v4, v0, v5

    const-string v4, "MakerNote"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3e

    aput-object v4, v0, v5

    const-string v4, "MaxApertureValue"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3f

    aput-object v4, v0, v5

    const-string v4, "MeteringMode"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x40

    aput-object v4, v0, v5

    const-string v4, "NewSubfileType"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x41

    aput-object v4, v0, v5

    const-string v4, "OECF"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x42

    aput-object v4, v0, v5

    const-string v4, "PixelXDimension"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x43

    aput-object v4, v0, v5

    const-string v4, "PixelYDimension"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x44

    aput-object v4, v0, v5

    const-string v4, "RelatedSoundFile"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x45

    aput-object v4, v0, v5

    const-string v4, "Saturation"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x46

    aput-object v4, v0, v5

    const-string v4, "SceneCaptureType"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x47

    aput-object v4, v0, v5

    const-string v4, "SceneType"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x48

    aput-object v4, v0, v5

    const-string v4, "SensingMethod"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x49

    aput-object v4, v0, v5

    const-string v4, "Sharpness"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x4a

    aput-object v4, v0, v5

    const-string v4, "ShutterSpeedValue"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x4b

    aput-object v4, v0, v5

    const-string v4, "SpatialFrequencyResponse"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x4c

    aput-object v4, v0, v5

    const-string v4, "SpectralSensitivity"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x4d

    aput-object v4, v0, v5

    const-string v4, "SubfileType"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x4e

    aput-object v4, v0, v5

    const-string v4, "SubSecTime"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x4f

    aput-object v4, v0, v5

    const-string v4, "SubSecTimeDigitized"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x50

    aput-object v4, v0, v5

    const-string v4, "SubSecTimeOriginal"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x51

    aput-object v4, v0, v5

    const-string v4, "SubjectArea"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x52

    aput-object v4, v0, v5

    const-string v4, "SubjectDistance"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x53

    aput-object v4, v0, v5

    const-string v4, "SubjectDistanceRange"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x54

    aput-object v4, v0, v5

    const-string v4, "SubjectLocation"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x55

    aput-object v4, v0, v5

    const-string v4, "UserComment"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x56

    aput-object v4, v0, v5

    const-string v4, "WhiteBalance"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x57

    aput-object v4, v0, v5

    const-string v4, "GPSAltitudeRef"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x58

    aput-object v4, v0, v5

    const-string v4, "GPSAreaInformation"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x59

    aput-object v4, v0, v5

    const-string v4, "GPSDOP"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5a

    aput-object v4, v0, v5

    const-string v4, "GPSDateStamp"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5b

    aput-object v4, v0, v5

    const-string v4, "GPSDestBearing"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5c

    aput-object v4, v0, v5

    const-string v4, "GPSDestBearingRef"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5d

    aput-object v4, v0, v5

    const-string v4, "GPSDestDistance"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5e

    aput-object v4, v0, v5

    const-string v4, "GPSDestDistanceRef"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5f

    aput-object v4, v0, v5

    const-string v4, "GPSDestLatitude"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x60

    aput-object v4, v0, v5

    const-string v4, "GPSDestLatitudeRef"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x61

    aput-object v4, v0, v5

    const-string v4, "GPSDestLongitude"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x62

    aput-object v4, v0, v5

    const-string v4, "GPSDestLongitudeRef"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x63

    aput-object v4, v0, v5

    const-string v4, "GPSDifferential"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    aput-object v4, v0, v5

    const-string v4, "GPSImgDirection"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x65

    aput-object v4, v0, v5

    const-string v4, "GPSImgDirectionRef"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x66

    aput-object v4, v0, v5

    const-string v4, "GPSLatitudeRef"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x67

    aput-object v4, v0, v5

    const-string v4, "GPSLongitudeRef"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x68

    aput-object v4, v0, v5

    const-string v4, "GPSMapDatum"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x69

    aput-object v4, v0, v5

    const-string v4, "GPSMeasureMode"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x6a

    aput-object v4, v0, v5

    const-string v4, "GPSProcessingMethod"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x6b

    aput-object v4, v0, v5

    const-string v4, "GPSSatellites"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x6c

    aput-object v4, v0, v5

    const-string v4, "GPSSpeed"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x6d

    aput-object v4, v0, v5

    const-string v4, "GPSSpeedRef"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x6e

    aput-object v4, v0, v5

    const-string v4, "GPSStatus"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x6f

    aput-object v4, v0, v5

    const-string v4, "GPSTimeStamp"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x70

    aput-object v4, v0, v5

    const-string v4, "GPSTrack"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x71

    aput-object v3, v0, v4

    const-string v3, "GPSTrackRef"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x72

    aput-object v3, v0, v4

    const-string v3, "GPSVersionID"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x73

    aput-object v3, v0, v4

    const-string v3, "InteroperabilityIndex"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x74

    aput-object v1, v0, v3

    const-string v1, "ThumbnailImageLength"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x75

    aput-object v1, v0, v3

    const-string v1, "ThumbnailImageWidth"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x76

    aput-object v1, v0, v3

    const-string v1, "DNGVersion"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x77

    aput-object v1, v0, v3

    const-string v1, "DefaultCropSize"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x78

    aput-object v1, v0, v3

    const-string v1, "PreviewImageStart"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x79

    aput-object v1, v0, v3

    const-string v1, "PreviewImageLength"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x7a

    aput-object v1, v0, v3

    const-string v1, "AspectFrame"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x7b

    aput-object v1, v0, v3

    const-string v1, "SensorBottomBorder"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x7c

    aput-object v1, v0, v3

    const-string v1, "SensorLeftBorder"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x7d

    aput-object v1, v0, v3

    const-string v1, "SensorRightBorder"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x7e

    aput-object v1, v0, v3

    const-string v1, "SensorTopBorder"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x7f

    aput-object v1, v0, v3

    const-string v1, "ISO"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    aput-object v1, v0, v2

    sput-object v0, Lorg/reactnative/camera/RNCameraViewHelper;->exifTags:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearExifData(Landroidx/exifinterface/media/ExifInterface;)V
    .locals 6

    .line 435
    sget-object v0, Lorg/reactnative/camera/RNCameraViewHelper;->exifTags:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    const/4 v5, 0x1

    .line 436
    aget-object v4, v4, v5

    invoke-virtual {p0, v4, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "GPSLatitude"

    .line 440
    invoke-virtual {p0, v0, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSLongitude"

    .line 441
    invoke-virtual {p0, v0, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSAltitude"

    .line 442
    invoke-virtual {p0, v0, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static emitBarCodeReadEvent(Landroid/view/ViewGroup;Lcom/google/zxing/Result;II)V
    .locals 8

    .line 303
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 304
    new-instance v7, Lorg/reactnative/camera/RNCameraViewHelper$11;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/reactnative/camera/RNCameraViewHelper$11;-><init>(Landroid/view/ViewGroup;Lcom/google/zxing/Result;IILcom/facebook/react/bridge/ReactContext;)V

    invoke-virtual {v0, v7}, Lcom/facebook/react/bridge/ReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static emitBarcodeDetectionErrorEvent(Landroid/view/ViewGroup;Lorg/reactnative/barcodedetector/RNBarcodeDetector;)V
    .locals 2

    .line 290
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 291
    new-instance v1, Lorg/reactnative/camera/RNCameraViewHelper$10;

    invoke-direct {v1, p0, p1, v0}, Lorg/reactnative/camera/RNCameraViewHelper$10;-><init>(Landroid/view/ViewGroup;Lorg/reactnative/barcodedetector/RNBarcodeDetector;Lcom/facebook/react/bridge/ReactContext;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static emitBarcodesDetectedEvent(Landroid/view/ViewGroup;Lcom/facebook/react/bridge/WritableArray;)V
    .locals 2

    .line 278
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 279
    new-instance v1, Lorg/reactnative/camera/RNCameraViewHelper$9;

    invoke-direct {v1, p0, p1, v0}, Lorg/reactnative/camera/RNCameraViewHelper$9;-><init>(Landroid/view/ViewGroup;Lcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/ReactContext;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static emitCameraReadyEvent(Landroid/view/ViewGroup;)V
    .locals 2

    .line 183
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 184
    new-instance v1, Lorg/reactnative/camera/RNCameraViewHelper$2;

    invoke-direct {v1, p0, v0}, Lorg/reactnative/camera/RNCameraViewHelper$2;-><init>(Landroid/view/ViewGroup;Lcom/facebook/react/bridge/ReactContext;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static emitFaceDetectionErrorEvent(Landroid/view/ViewGroup;Lorg/reactnative/facedetector/RNFaceDetector;)V
    .locals 2

    .line 264
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 265
    new-instance v1, Lorg/reactnative/camera/RNCameraViewHelper$8;

    invoke-direct {v1, p0, p1, v0}, Lorg/reactnative/camera/RNCameraViewHelper$8;-><init>(Landroid/view/ViewGroup;Lorg/reactnative/facedetector/RNFaceDetector;Lcom/facebook/react/bridge/ReactContext;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static emitFacesDetectedEvent(Landroid/view/ViewGroup;Lcom/facebook/react/bridge/WritableArray;)V
    .locals 2

    .line 252
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 253
    new-instance v1, Lorg/reactnative/camera/RNCameraViewHelper$7;

    invoke-direct {v1, p0, p1, v0}, Lorg/reactnative/camera/RNCameraViewHelper$7;-><init>(Landroid/view/ViewGroup;Lcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/ReactContext;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static emitMountErrorEvent(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 2

    .line 169
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 170
    new-instance v1, Lorg/reactnative/camera/RNCameraViewHelper$1;

    invoke-direct {v1, p0, p1, v0}, Lorg/reactnative/camera/RNCameraViewHelper$1;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Lcom/facebook/react/bridge/ReactContext;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static emitPictureSavedEvent(Landroid/view/ViewGroup;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2

    .line 197
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 198
    new-instance v1, Lorg/reactnative/camera/RNCameraViewHelper$3;

    invoke-direct {v1, p0, p1, v0}, Lorg/reactnative/camera/RNCameraViewHelper$3;-><init>(Landroid/view/ViewGroup;Lcom/facebook/react/bridge/WritableMap;Lcom/facebook/react/bridge/ReactContext;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static emitPictureTakenEvent(Landroid/view/ViewGroup;)V
    .locals 2

    .line 212
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 213
    new-instance v1, Lorg/reactnative/camera/RNCameraViewHelper$4;

    invoke-direct {v1, p0, v0}, Lorg/reactnative/camera/RNCameraViewHelper$4;-><init>(Landroid/view/ViewGroup;Lcom/facebook/react/bridge/ReactContext;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static emitRecordingEndEvent(Landroid/view/ViewGroup;)V
    .locals 2

    .line 238
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 239
    new-instance v1, Lorg/reactnative/camera/RNCameraViewHelper$6;

    invoke-direct {v1, p0, v0}, Lorg/reactnative/camera/RNCameraViewHelper$6;-><init>(Landroid/view/ViewGroup;Lcom/facebook/react/bridge/ReactContext;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static emitRecordingStartEvent(Landroid/view/ViewGroup;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2

    .line 226
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 227
    new-instance v1, Lorg/reactnative/camera/RNCameraViewHelper$5;

    invoke-direct {v1, p0, p1, v0}, Lorg/reactnative/camera/RNCameraViewHelper$5;-><init>(Landroid/view/ViewGroup;Lcom/facebook/react/bridge/WritableMap;Lcom/facebook/react/bridge/ReactContext;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static emitTextRecognizedEvent(Landroid/view/ViewGroup;Lcom/facebook/react/bridge/WritableArray;)V
    .locals 2

    .line 316
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 317
    new-instance v1, Lorg/reactnative/camera/RNCameraViewHelper$12;

    invoke-direct {v1, p0, p1, v0}, Lorg/reactnative/camera/RNCameraViewHelper$12;-><init>(Landroid/view/ViewGroup;Lcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/ReactContext;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static generateSimulatorPhoto(II)Landroid/graphics/Bitmap;
    .locals 9

    .line 446
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 447
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 448
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, -0x1000000

    .line 449
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p0, p0

    int-to-float p1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v7

    move v4, p0

    move v5, p1

    .line 450
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 451
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/16 v2, -0x100

    .line 452
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x420c0000    # 35.0f

    .line 453
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 454
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 455
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy.MM.dd G \'->\' HH:mm:ss z"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x3dcccccd    # 0.1f

    mul-float v5, v5, p0

    const v6, 0x3e4ccccd    # 0.2f

    mul-float v8, p1, v6

    invoke-virtual {v7, v4, v5, v8, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 457
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    mul-float v6, v6, p0

    const v5, 0x3ecccccd    # 0.4f

    mul-float v8, p1, v5

    invoke-virtual {v7, v4, v6, v8, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 458
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const v6, 0x3e99999a    # 0.3f

    mul-float v6, v6, p0

    const v8, 0x3f19999a    # 0.6f

    mul-float v8, v8, p1

    invoke-virtual {v7, v4, v6, v8, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 459
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    mul-float p0, p0, v5

    const v3, 0x3f4ccccd    # 0.8f

    mul-float p1, p1, v3

    invoke-virtual {v7, v2, p0, p1, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public static getCamcorderProfile(I)Landroid/media/CamcorderProfile;
    .locals 3

    const/4 v0, 0x1

    .line 362
    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 363
    invoke-static {p0}, Lorg/reactnative/camera/RNCameraViewHelper;->getCamcorderProfileQualityFromCameraModuleConstant(I)I

    move-result v1

    .line 364
    invoke-static {v1}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    const/16 p0, 0x280

    .line 367
    iput p0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    :cond_0
    return-object v0
.end method

.method private static getCamcorderProfileQualityFromCameraModuleConstant(I)I
    .locals 3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq p0, v1, :cond_0

    if-eq p0, v2, :cond_0

    return v0

    :cond_0
    return v2

    :cond_1
    const/4 p0, 0x5

    return p0

    .line 346
    :cond_2
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_3

    const/16 p0, 0x8

    return p0

    :cond_3
    const/4 p0, 0x6

    return p0
.end method

.method public static getCorrectCameraRotation(III)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    add-int/2addr p2, p0

    .line 331
    rem-int/lit16 p2, p2, 0x168

    return p2

    .line 333
    :cond_0
    invoke-static {p0}, Lorg/reactnative/camera/RNCameraViewHelper;->rotationIsLandscape(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xb4

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    sub-int/2addr p2, p0

    add-int/2addr p2, p1

    .line 334
    rem-int/lit16 p2, p2, 0x168

    return p2
.end method

.method public static getExifData(Landroidx/exifinterface/media/ExifInterface;)Lcom/facebook/react/bridge/WritableMap;
    .locals 14

    .line 374
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 375
    sget-object v1, Lorg/reactnative/camera/RNCameraViewHelper;->exifTags:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    if-ge v4, v2, :cond_8

    aget-object v8, v1, v4

    .line 376
    aget-object v9, v8, v7

    .line 377
    invoke-virtual {p0, v9}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 378
    aget-object v8, v8, v3

    const/4 v10, -0x1

    .line 379
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, -0x4f08842f

    const/4 v13, 0x2

    if-eq v11, v12, :cond_2

    const v12, -0x352a9fef    # -6991880.5f

    if-eq v11, v12, :cond_1

    const v12, 0x197ef

    if-eq v11, v12, :cond_0

    goto :goto_1

    :cond_0
    const-string v11, "int"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const-string v11, "string"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v10, 0x0

    goto :goto_1

    :cond_2
    const-string v11, "double"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v10, 0x2

    :cond_3
    :goto_1
    if-eqz v10, :cond_6

    if-eq v10, v7, :cond_5

    if-eq v10, v13, :cond_4

    goto :goto_2

    .line 387
    :cond_4
    invoke-virtual {p0, v9, v5, v6}, Landroidx/exifinterface/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v5

    invoke-interface {v0, v9, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_2

    .line 384
    :cond_5
    invoke-virtual {p0, v9, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v5

    invoke-interface {v0, v9, v5}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 381
    :cond_6
    invoke-virtual {p0, v9}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v9, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 393
    :cond_8
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->getLatLong()[D

    move-result-object v1

    if-eqz v1, :cond_9

    .line 395
    aget-wide v2, v1, v3

    const-string v4, "GPSLatitude"

    invoke-interface {v0, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 396
    aget-wide v2, v1, v7

    const-string v1, "GPSLongitude"

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 397
    invoke-virtual {p0, v5, v6}, Landroidx/exifinterface/media/ExifInterface;->getAltitude(D)D

    move-result-wide v1

    const-string p0, "GPSAltitude"

    invoke-interface {v0, p0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    :cond_9
    return-object v0
.end method

.method private static rotationIsLandscape(I)Z
    .locals 1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static setExifData(Landroidx/exifinterface/media/ExifInterface;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 11

    .line 404
    sget-object v0, Lorg/reactnative/camera/RNCameraViewHelper;->exifTags:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_8

    aget-object v4, v0, v3

    const/4 v5, 0x1

    .line 405
    aget-object v6, v4, v5

    .line 406
    invoke-interface {p1, v6}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 407
    aget-object v4, v4, v2

    const/4 v7, -0x1

    .line 408
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x4f08842f

    const/4 v10, 0x2

    if-eq v8, v9, :cond_2

    const v9, -0x352a9fef    # -6991880.5f

    if-eq v8, v9, :cond_1

    const v9, 0x197ef

    if-eq v8, v9, :cond_0

    goto :goto_1

    :cond_0
    const-string v8, "int"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const-string v8, "string"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    const-string v8, "double"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v7, 0x2

    :cond_3
    :goto_1
    if-eqz v7, :cond_6

    if-eq v7, v5, :cond_5

    if-eq v7, v10, :cond_4

    goto :goto_2

    .line 417
    :cond_4
    invoke-interface {p1, v6}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v6, v4}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-interface {p1, v6}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    goto :goto_2

    .line 413
    :cond_5
    invoke-interface {p1, v6}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v6, v4}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-interface {p1, v6}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    goto :goto_2

    .line 410
    :cond_6
    invoke-interface {p1, v6}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v6, v4}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    const-string v0, "GPSLatitude"

    .line 424
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "GPSLongitude"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 425
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 426
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 425
    invoke-virtual {p0, v2, v3, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setLatLong(DD)V

    :cond_9
    const-string v0, "GPSAltitude"

    .line 428
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 429
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAltitude(D)V

    :cond_a
    return-void
.end method
