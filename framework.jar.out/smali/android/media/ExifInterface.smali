.class public Landroid/media/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ExifInterface$ByteOrderedDataInputStream;,
        Landroid/media/ExifInterface$ByteOrderedDataOutputStream;,
        Landroid/media/ExifInterface$ExifAttribute;,
        Landroid/media/ExifInterface$ExifTag;,
        Landroid/media/ExifInterface$Rational;
    }
.end annotation


# static fields
.field private static final ASCII:Ljava/nio/charset/Charset;

.field private static final BITS_PER_SAMPLE_GREYSCALE_1:[I

.field private static final BITS_PER_SAMPLE_GREYSCALE_2:[I

.field private static final BITS_PER_SAMPLE_RGB:[I

.field private static final BYTE_ALIGN_II:S = 0x4949s

.field private static final BYTE_ALIGN_MM:S = 0x4d4ds

.field private static final DATA_DEFLATE_ZIP:I = 0x8

.field private static final DATA_HUFFMAN_COMPRESSED:I = 0x2

.field private static final DATA_JPEG:I = 0x6

.field private static final DATA_JPEG_COMPRESSED:I = 0x7

.field private static final DATA_LOSSY_JPEG:I = 0x884c

.field private static final DATA_PACK_BITS_COMPRESSED:I = 0x8005

.field private static final DATA_UNCOMPRESSED:I = 0x1

.field private static final DEBUG:Z = false

.field private static final EXIF_ASCII_PREFIX:[B

.field private static final EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

.field private static final IDENTIFIER_EXIF_APP1:[B

.field private static final IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_FORMAT_BYTE:I = 0x1

.field private static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field private static final IFD_FORMAT_DOUBLE:I = 0xc

.field private static final IFD_FORMAT_IFD:I = 0xd

.field private static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final IFD_FORMAT_SBYTE:I = 0x6

.field private static final IFD_FORMAT_SINGLE:I = 0xb

.field private static final IFD_FORMAT_SLONG:I = 0x9

.field private static final IFD_FORMAT_SRATIONAL:I = 0xa

.field private static final IFD_FORMAT_SSHORT:I = 0x8

.field private static final IFD_FORMAT_STRING:I = 0x2

.field private static final IFD_FORMAT_ULONG:I = 0x4

.field private static final IFD_FORMAT_UNDEFINED:I = 0x7

.field private static final IFD_FORMAT_URATIONAL:I = 0x5

.field private static final IFD_FORMAT_USHORT:I = 0x3

.field private static final IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_OFFSET:I = 0x8

.field private static final IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_TYPE_EXIF:I = 0x1

.field private static final IFD_TYPE_GPS:I = 0x2

.field private static final IFD_TYPE_INTEROPERABILITY:I = 0x3

.field private static final IFD_TYPE_ORF_CAMERA_SETTINGS:I = 0x7

.field private static final IFD_TYPE_ORF_IMAGE_PROCESSING:I = 0x8

.field private static final IFD_TYPE_ORF_MAKER_NOTE:I = 0x6

.field private static final IFD_TYPE_PEF:I = 0x9

.field private static final IFD_TYPE_PREVIEW:I = 0x5

.field private static final IFD_TYPE_PRIMARY:I = 0x0

.field private static final IFD_TYPE_THUMBNAIL:I = 0x4

.field private static final IMAGE_TYPE_ARW:I = 0x1

.field private static final IMAGE_TYPE_CR2:I = 0x2

.field private static final IMAGE_TYPE_DNG:I = 0x3

.field private static final IMAGE_TYPE_JPEG:I = 0x4

.field private static final IMAGE_TYPE_NEF:I = 0x5

.field private static final IMAGE_TYPE_NRW:I = 0x6

.field private static final IMAGE_TYPE_ORF:I = 0x7

.field private static final IMAGE_TYPE_PEF:I = 0x8

.field private static final IMAGE_TYPE_RAF:I = 0x9

.field private static final IMAGE_TYPE_RW2:I = 0xa

.field private static final IMAGE_TYPE_SRW:I = 0xb

.field private static final IMAGE_TYPE_UNKNOWN:I = 0x0

.field private static final JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

.field private static final JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

.field private static final JPEG_SIGNATURE:[B

.field private static final MARKER:B = -0x1t

.field private static final MARKER_APP1:B = -0x1ft

.field private static final MARKER_COM:B = -0x2t

.field private static final MARKER_EOI:B = -0x27t

.field private static final MARKER_SOF0:B = -0x40t

.field private static final MARKER_SOF1:B = -0x3ft

.field private static final MARKER_SOF10:B = -0x36t

.field private static final MARKER_SOF11:B = -0x35t

.field private static final MARKER_SOF13:B = -0x33t

.field private static final MARKER_SOF14:B = -0x32t

.field private static final MARKER_SOF15:B = -0x31t

.field private static final MARKER_SOF2:B = -0x3et

.field private static final MARKER_SOF3:B = -0x3dt

.field private static final MARKER_SOF5:B = -0x3bt

.field private static final MARKER_SOF6:B = -0x3at

.field private static final MARKER_SOF7:B = -0x39t

.field private static final MARKER_SOF9:B = -0x37t

.field private static final MARKER_SOI:B = -0x28t

.field private static final MARKER_SOS:B = -0x26t

.field private static final MAX_THUMBNAIL_SIZE:I = 0x200

.field private static final ORF_CAMERA_SETTINGS_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final ORF_IMAGE_PROCESSING_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final ORF_MAKER_NOTE_HEADER_1:[B

.field private static final ORF_MAKER_NOTE_HEADER_1_SIZE:I = 0x8

.field private static final ORF_MAKER_NOTE_HEADER_2:[B

.field private static final ORF_MAKER_NOTE_HEADER_2_SIZE:I = 0xc

.field private static final ORF_MAKER_NOTE_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final ORF_SIGNATURE_1:S = 0x4f52s

.field private static final ORF_SIGNATURE_2:S = 0x5352s

.field public static final ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final ORIENTATION_NORMAL:I = 0x1

.field public static final ORIENTATION_ROTATE_180:I = 0x3

.field public static final ORIENTATION_ROTATE_270:I = 0x8

.field public static final ORIENTATION_ROTATE_90:I = 0x6

.field public static final ORIENTATION_TRANSPOSE:I = 0x5

.field public static final ORIENTATION_TRANSVERSE:I = 0x7

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field private static final ORIGINAL_RESOLUTION_IMAGE:I = 0x0

.field private static final PEF_MAKER_NOTE_SKIP_SIZE:I = 0x6

.field private static final PEF_SIGNATURE:Ljava/lang/String; = "PENTAX"

.field private static final PEF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final PHOTOMETRIC_INTERPRETATION_BLACK_IS_ZERO:I = 0x1

.field private static final PHOTOMETRIC_INTERPRETATION_RGB:I = 0x2

.field private static final PHOTOMETRIC_INTERPRETATION_WHITE_IS_ZERO:I = 0x0

.field private static final PHOTOMETRIC_INTERPRETATION_YCBCR:I = 0x6

.field private static final RAF_INFO_SIZE:I = 0xa0

.field private static final RAF_JPEG_LENGTH_VALUE_SIZE:I = 0x4

.field private static final RAF_OFFSET_TO_JPEG_IMAGE_OFFSET:I = 0x54

.field private static final RAF_SIGNATURE:Ljava/lang/String; = "FUJIFILMCCD-RAW"

.field private static final REDUCED_RESOLUTION_IMAGE:I = 0x1

.field private static final RW2_SIGNATURE:S = 0x55s

.field private static final SIGNATURE_CHECK_SIZE:I = 0x1388

.field private static final START_CODE:B = 0x2at

.field private static final TAG:Ljava/lang/String; = "ExifInterface"

.field public static final TAG_APERTURE:Ljava/lang/String; = "FNumber"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_APERTURE_VALUE:Ljava/lang/String; = "ApertureValue"

.field public static final TAG_ARTIST:Ljava/lang/String; = "Artist"

.field public static final TAG_BITS_PER_SAMPLE:Ljava/lang/String; = "BitsPerSample"

.field public static final TAG_BRIGHTNESS_VALUE:Ljava/lang/String; = "BrightnessValue"

.field public static final TAG_CFA_PATTERN:Ljava/lang/String; = "CFAPattern"

.field public static final TAG_COLOR_SPACE:Ljava/lang/String; = "ColorSpace"

.field public static final TAG_COMPONENTS_CONFIGURATION:Ljava/lang/String; = "ComponentsConfiguration"

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:Ljava/lang/String; = "CompressedBitsPerPixel"

.field public static final TAG_COMPRESSION:Ljava/lang/String; = "Compression"

.field public static final TAG_CONTRAST:Ljava/lang/String; = "Contrast"

.field public static final TAG_COPYRIGHT:Ljava/lang/String; = "Copyright"

.field public static final TAG_CUSTOM_RENDERED:Ljava/lang/String; = "CustomRendered"

.field public static final TAG_DATETIME:Ljava/lang/String; = "DateTime"

.field public static final TAG_DATETIME_DIGITIZED:Ljava/lang/String; = "DateTimeDigitized"

.field public static final TAG_DATETIME_ORIGINAL:Ljava/lang/String; = "DateTimeOriginal"

.field public static final TAG_DEFAULT_CROP_SIZE:Ljava/lang/String; = "DefaultCropSize"

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:Ljava/lang/String; = "DeviceSettingDescription"

.field public static final TAG_DIGITAL_ZOOM_RATIO:Ljava/lang/String; = "DigitalZoomRatio"

.field public static final TAG_DNG_VERSION:Ljava/lang/String; = "DNGVersion"

.field private static final TAG_EXIF_IFD_POINTER:Ljava/lang/String; = "ExifIFDPointer"

.field public static final TAG_EXIF_VERSION:Ljava/lang/String; = "ExifVersion"

.field public static final TAG_EXPOSURE_BIAS_VALUE:Ljava/lang/String; = "ExposureBiasValue"

.field public static final TAG_EXPOSURE_INDEX:Ljava/lang/String; = "ExposureIndex"

.field public static final TAG_EXPOSURE_MODE:Ljava/lang/String; = "ExposureMode"

.field public static final TAG_EXPOSURE_PROGRAM:Ljava/lang/String; = "ExposureProgram"

.field public static final TAG_EXPOSURE_TIME:Ljava/lang/String; = "ExposureTime"

.field public static final TAG_FILE_SOURCE:Ljava/lang/String; = "FileSource"

.field public static final TAG_FLASH:Ljava/lang/String; = "Flash"

.field public static final TAG_FLASHPIX_VERSION:Ljava/lang/String; = "FlashpixVersion"

.field public static final TAG_FLASH_ENERGY:Ljava/lang/String; = "FlashEnergy"

.field public static final TAG_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final TAG_FOCAL_LENGTH_IN_35MM_FILM:Ljava/lang/String; = "FocalLengthIn35mmFilm"

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:Ljava/lang/String; = "FocalPlaneResolutionUnit"

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:Ljava/lang/String; = "FocalPlaneXResolution"

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:Ljava/lang/String; = "FocalPlaneYResolution"

.field public static final TAG_F_NUMBER:Ljava/lang/String; = "FNumber"

.field public static final TAG_GAIN_CONTROL:Ljava/lang/String; = "GainControl"

.field public static final TAG_GPS_ALTITUDE:Ljava/lang/String; = "GPSAltitude"

.field public static final TAG_GPS_ALTITUDE_REF:Ljava/lang/String; = "GPSAltitudeRef"

.field public static final TAG_GPS_AREA_INFORMATION:Ljava/lang/String; = "GPSAreaInformation"

.field public static final TAG_GPS_DATESTAMP:Ljava/lang/String; = "GPSDateStamp"

.field public static final TAG_GPS_DEST_BEARING:Ljava/lang/String; = "GPSDestBearing"

.field public static final TAG_GPS_DEST_BEARING_REF:Ljava/lang/String; = "GPSDestBearingRef"

.field public static final TAG_GPS_DEST_DISTANCE:Ljava/lang/String; = "GPSDestDistance"

.field public static final TAG_GPS_DEST_DISTANCE_REF:Ljava/lang/String; = "GPSDestDistanceRef"

.field public static final TAG_GPS_DEST_LATITUDE:Ljava/lang/String; = "GPSDestLatitude"

.field public static final TAG_GPS_DEST_LATITUDE_REF:Ljava/lang/String; = "GPSDestLatitudeRef"

.field public static final TAG_GPS_DEST_LONGITUDE:Ljava/lang/String; = "GPSDestLongitude"

.field public static final TAG_GPS_DEST_LONGITUDE_REF:Ljava/lang/String; = "GPSDestLongitudeRef"

.field public static final TAG_GPS_DIFFERENTIAL:Ljava/lang/String; = "GPSDifferential"

.field public static final TAG_GPS_DOP:Ljava/lang/String; = "GPSDOP"

.field public static final TAG_GPS_IMG_DIRECTION:Ljava/lang/String; = "GPSImgDirection"

.field public static final TAG_GPS_IMG_DIRECTION_REF:Ljava/lang/String; = "GPSImgDirectionRef"

.field private static final TAG_GPS_INFO_IFD_POINTER:Ljava/lang/String; = "GPSInfoIFDPointer"

.field public static final TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"

.field public static final TAG_GPS_MAP_DATUM:Ljava/lang/String; = "GPSMapDatum"

.field public static final TAG_GPS_MEASURE_MODE:Ljava/lang/String; = "GPSMeasureMode"

.field public static final TAG_GPS_PROCESSING_METHOD:Ljava/lang/String; = "GPSProcessingMethod"

.field public static final TAG_GPS_SATELLITES:Ljava/lang/String; = "GPSSatellites"

.field public static final TAG_GPS_SPEED:Ljava/lang/String; = "GPSSpeed"

.field public static final TAG_GPS_SPEED_REF:Ljava/lang/String; = "GPSSpeedRef"

.field public static final TAG_GPS_STATUS:Ljava/lang/String; = "GPSStatus"

.field public static final TAG_GPS_TIMESTAMP:Ljava/lang/String; = "GPSTimeStamp"

.field public static final TAG_GPS_TRACK:Ljava/lang/String; = "GPSTrack"

.field public static final TAG_GPS_TRACK_REF:Ljava/lang/String; = "GPSTrackRef"

.field public static final TAG_GPS_VERSION_ID:Ljava/lang/String; = "GPSVersionID"

.field private static final TAG_HAS_THUMBNAIL:Ljava/lang/String; = "HasThumbnail"

.field public static final TAG_IMAGE_DESCRIPTION:Ljava/lang/String; = "ImageDescription"

.field public static final TAG_IMAGE_LENGTH:Ljava/lang/String; = "ImageLength"

.field public static final TAG_IMAGE_UNIQUE_ID:Ljava/lang/String; = "ImageUniqueID"

.field public static final TAG_IMAGE_WIDTH:Ljava/lang/String; = "ImageWidth"

.field private static final TAG_INTEROPERABILITY_IFD_POINTER:Ljava/lang/String; = "InteroperabilityIFDPointer"

.field public static final TAG_INTEROPERABILITY_INDEX:Ljava/lang/String; = "InteroperabilityIndex"

.field public static final TAG_ISO:Ljava/lang/String; = "ISOSpeedRatings"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_ISO_SPEED_RATINGS:Ljava/lang/String; = "ISOSpeedRatings"

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:Ljava/lang/String; = "JPEGInterchangeFormat"

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Ljava/lang/String; = "JPEGInterchangeFormatLength"

.field public static final TAG_LIGHT_SOURCE:Ljava/lang/String; = "LightSource"

.field public static final TAG_MAKE:Ljava/lang/String; = "Make"

.field public static final TAG_MAKER_NOTE:Ljava/lang/String; = "MakerNote"

.field public static final TAG_MAX_APERTURE_VALUE:Ljava/lang/String; = "MaxApertureValue"

.field public static final TAG_METERING_MODE:Ljava/lang/String; = "MeteringMode"

.field public static final TAG_MODEL:Ljava/lang/String; = "Model"

.field public static final TAG_NEW_SUBFILE_TYPE:Ljava/lang/String; = "NewSubfileType"

.field public static final TAG_OECF:Ljava/lang/String; = "OECF"

.field public static final TAG_ORF_ASPECT_FRAME:Ljava/lang/String; = "AspectFrame"

.field private static final TAG_ORF_CAMERA_SETTINGS_IFD_POINTER:Ljava/lang/String; = "CameraSettingsIFDPointer"

.field private static final TAG_ORF_IMAGE_PROCESSING_IFD_POINTER:Ljava/lang/String; = "ImageProcessingIFDPointer"

.field public static final TAG_ORF_PREVIEW_IMAGE_LENGTH:Ljava/lang/String; = "PreviewImageLength"

.field public static final TAG_ORF_PREVIEW_IMAGE_START:Ljava/lang/String; = "PreviewImageStart"

.field public static final TAG_ORF_THUMBNAIL_IMAGE:Ljava/lang/String; = "ThumbnailImage"

.field public static final TAG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:Ljava/lang/String; = "PhotometricInterpretation"

.field public static final TAG_PIXEL_X_DIMENSION:Ljava/lang/String; = "PixelXDimension"

.field public static final TAG_PIXEL_Y_DIMENSION:Ljava/lang/String; = "PixelYDimension"

.field public static final TAG_PLANAR_CONFIGURATION:Ljava/lang/String; = "PlanarConfiguration"

.field public static final TAG_PRIMARY_CHROMATICITIES:Ljava/lang/String; = "PrimaryChromaticities"

.field private static final TAG_RAF_IMAGE_SIZE:Landroid/media/ExifInterface$ExifTag;

.field public static final TAG_REFERENCE_BLACK_WHITE:Ljava/lang/String; = "ReferenceBlackWhite"

.field public static final TAG_RELATED_SOUND_FILE:Ljava/lang/String; = "RelatedSoundFile"

.field public static final TAG_RESOLUTION_UNIT:Ljava/lang/String; = "ResolutionUnit"

.field public static final TAG_ROWS_PER_STRIP:Ljava/lang/String; = "RowsPerStrip"

.field public static final TAG_RW2_ISO:Ljava/lang/String; = "ISO"

.field public static final TAG_RW2_JPG_FROM_RAW:Ljava/lang/String; = "JpgFromRaw"

.field public static final TAG_RW2_SENSOR_BOTTOM_BORDER:Ljava/lang/String; = "SensorBottomBorder"

.field public static final TAG_RW2_SENSOR_LEFT_BORDER:Ljava/lang/String; = "SensorLeftBorder"

.field public static final TAG_RW2_SENSOR_RIGHT_BORDER:Ljava/lang/String; = "SensorRightBorder"

.field public static final TAG_RW2_SENSOR_TOP_BORDER:Ljava/lang/String; = "SensorTopBorder"

.field public static final TAG_SAMPLES_PER_PIXEL:Ljava/lang/String; = "SamplesPerPixel"

.field public static final TAG_SATURATION:Ljava/lang/String; = "Saturation"

.field public static final TAG_SCENE_CAPTURE_TYPE:Ljava/lang/String; = "SceneCaptureType"

.field public static final TAG_SCENE_TYPE:Ljava/lang/String; = "SceneType"

.field public static final TAG_SENSING_METHOD:Ljava/lang/String; = "SensingMethod"

.field public static final TAG_SHARPNESS:Ljava/lang/String; = "Sharpness"

.field public static final TAG_SHUTTER_SPEED_VALUE:Ljava/lang/String; = "ShutterSpeedValue"

.field public static final TAG_SOFTWARE:Ljava/lang/String; = "Software"

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:Ljava/lang/String; = "SpatialFrequencyResponse"

.field public static final TAG_SPECTRAL_SENSITIVITY:Ljava/lang/String; = "SpectralSensitivity"

.field public static final TAG_STRIP_BYTE_COUNTS:Ljava/lang/String; = "StripByteCounts"

.field public static final TAG_STRIP_OFFSETS:Ljava/lang/String; = "StripOffsets"

.field public static final TAG_SUBFILE_TYPE:Ljava/lang/String; = "SubfileType"

.field public static final TAG_SUBJECT_AREA:Ljava/lang/String; = "SubjectArea"

.field public static final TAG_SUBJECT_DISTANCE:Ljava/lang/String; = "SubjectDistance"

.field public static final TAG_SUBJECT_DISTANCE_RANGE:Ljava/lang/String; = "SubjectDistanceRange"

.field public static final TAG_SUBJECT_LOCATION:Ljava/lang/String; = "SubjectLocation"

.field public static final TAG_SUBSEC_TIME:Ljava/lang/String; = "SubSecTime"

.field public static final TAG_SUBSEC_TIME_DIG:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final TAG_SUBSEC_TIME_DIGITIZED:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final TAG_SUBSEC_TIME_ORIG:Ljava/lang/String; = "SubSecTimeOriginal"

.field public static final TAG_SUBSEC_TIME_ORIGINAL:Ljava/lang/String; = "SubSecTimeOriginal"

.field private static final TAG_SUB_IFD_POINTER:Ljava/lang/String; = "SubIFDPointer"

.field private static final TAG_THUMBNAIL_DATA:Ljava/lang/String; = "ThumbnailData"

.field public static final TAG_THUMBNAIL_IMAGE_LENGTH:Ljava/lang/String; = "ThumbnailImageLength"

.field public static final TAG_THUMBNAIL_IMAGE_WIDTH:Ljava/lang/String; = "ThumbnailImageWidth"

.field private static final TAG_THUMBNAIL_LENGTH:Ljava/lang/String; = "ThumbnailLength"

.field private static final TAG_THUMBNAIL_OFFSET:Ljava/lang/String; = "ThumbnailOffset"

.field public static final TAG_TRANSFER_FUNCTION:Ljava/lang/String; = "TransferFunction"

.field public static final TAG_USER_COMMENT:Ljava/lang/String; = "UserComment"

.field public static final TAG_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field public static final TAG_WHITE_POINT:Ljava/lang/String; = "WhitePoint"

.field public static final TAG_X_RESOLUTION:Ljava/lang/String; = "XResolution"

.field public static final TAG_Y_CB_CR_COEFFICIENTS:Ljava/lang/String; = "YCbCrCoefficients"

.field public static final TAG_Y_CB_CR_POSITIONING:Ljava/lang/String; = "YCbCrPositioning"

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:Ljava/lang/String; = "YCbCrSubSampling"

.field public static final TAG_Y_RESOLUTION:Ljava/lang/String; = "YResolution"

.field public static final WHITEBALANCE_AUTO:I = 0x0

.field public static final WHITEBALANCE_MANUAL:I = 0x1

.field private static final sExifPointerTagMap:Ljava/util/HashMap;

.field private static final sExifTagMapsForReading:[Ljava/util/HashMap;

.field private static final sExifTagMapsForWriting:[Ljava/util/HashMap;

.field private static sFormatter:Ljava/text/SimpleDateFormat;

.field private static final sGpsTimestampPattern:Ljava/util/regex/Pattern;

.field private static final sNonZeroTimePattern:Ljava/util/regex/Pattern;

.field private static final sTagSetForCompatibility:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final mAttributes:[Ljava/util/HashMap;

.field private mExifByteOrder:Ljava/nio/ByteOrder;

.field private mExifOffset:I

.field private final mFilename:Ljava/lang/String;

.field private mHasThumbnail:Z

.field private final mIsInputStream:Z

.field private mIsSupportedFile:Z

.field private mMimeType:I

.field private mOrfMakerNoteOffset:I

.field private mOrfThumbnailLength:I

.field private mOrfThumbnailOffset:I

.field private mRw2JpgFromRawOffset:I

.field private final mSeekableFileDescriptor:Ljava/io/FileDescriptor;

.field private mThumbnailBytes:[B

.field private mThumbnailCompression:I

.field private mThumbnailLength:I

.field private mThumbnailOffset:I


# direct methods
.method static synthetic -get0()Ljava/nio/charset/Charset;
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic -get1()[B
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    return-object v0
.end method

.method static synthetic -get2()[I
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    return-object v0
.end method

.method static synthetic -get3()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 12

    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v5, 0x0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "BYTE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "STRING"

    aput-object v1, v0, v10

    const-string/jumbo v1, "USHORT"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ULONG"

    aput-object v1, v0, v4

    const-string/jumbo v1, "URATIONAL"

    aput-object v1, v0, v11

    const-string/jumbo v1, "SBYTE"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "UNDEFINED"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "SSHORT"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "SLONG"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "SRATIONAL"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "SINGLE"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "DOUBLE"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    const/16 v0, 0x8

    const/16 v1, 0x8

    const/16 v2, 0x8

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v4, v0, v1

    sput-object v0, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_1:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    const/16 v0, 0x29

    new-array v8, v0, [Landroid/media/ExifInterface$ExifTag;

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "NewSubfileType"

    const/16 v2, 0xfe

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x0

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubfileType"

    const/16 v2, 0xff

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x1

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ImageWidth"

    const/16 v2, 0x100

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v10

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ImageLength"

    const/16 v2, 0x101

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v3

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "BitsPerSample"

    const/16 v2, 0x102

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v4

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Compression"

    const/16 v2, 0x103

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v11

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PhotometricInterpretation"

    const/16 v2, 0x106

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x6

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ImageDescription"

    const/16 v2, 0x10e

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x7

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Make"

    const/16 v2, 0x10f

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x8

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Model"

    const/16 v2, 0x110

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x9

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "StripOffsets"

    const/16 v2, 0x111

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xa

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Orientation"

    const/16 v2, 0x112

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xb

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SamplesPerPixel"

    const/16 v2, 0x115

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xc

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "RowsPerStrip"

    const/16 v2, 0x116

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xd

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "StripByteCounts"

    const/16 v2, 0x117

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xe

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "XResolution"

    const/16 v2, 0x11a

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xf

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YResolution"

    const/16 v2, 0x11b

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x10

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PlanarConfiguration"

    const/16 v2, 0x11c

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x11

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ResolutionUnit"

    const/16 v2, 0x128

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x12

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "TransferFunction"

    const/16 v2, 0x12d

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x13

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Software"

    const/16 v2, 0x131

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x14

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DateTime"

    const/16 v2, 0x132

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x15

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Artist"

    const/16 v2, 0x13b

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x16

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "WhitePoint"

    const/16 v2, 0x13e

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x17

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PrimaryChromaticities"

    const/16 v2, 0x13f

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x18

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubIFDPointer"

    const/16 v2, 0x14a

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x19

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "JPEGInterchangeFormat"

    const/16 v2, 0x201

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1a

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "JPEGInterchangeFormatLength"

    const/16 v2, 0x202

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1b

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YCbCrCoefficients"

    const/16 v2, 0x211

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1c

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YCbCrSubSampling"

    const/16 v2, 0x212

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1d

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YCbCrPositioning"

    const/16 v2, 0x213

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1e

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ReferenceBlackWhite"

    const/16 v2, 0x214

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1f

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Copyright"

    const v2, 0x8298

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x20

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExifIFDPointer"

    const v2, 0x8769

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x21

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "GPSInfoIFDPointer"

    const v2, 0x8825

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x22

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SensorTopBorder"

    invoke-direct {v0, v1, v4, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x23

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SensorLeftBorder"

    invoke-direct {v0, v1, v11, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x24

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SensorBottomBorder"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x25

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SensorRightBorder"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x26

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ISO"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x27

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "JpgFromRaw"

    const/16 v2, 0x2e

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x28

    aput-object v0, v8, v1

    sput-object v8, Landroid/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v0, 0x3b

    new-array v8, v0, [Landroid/media/ExifInterface$ExifTag;

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExposureTime"

    const v2, 0x829a

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x0

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FNumber"

    const v2, 0x829d

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x1

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExposureProgram"

    const v2, 0x8822

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v10

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SpectralSensitivity"

    const v2, 0x8824

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v3

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ISOSpeedRatings"

    const v2, 0x8827

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v4

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "OECF"

    const v2, 0x8828

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v11

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExifVersion"

    const v2, 0x9000

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x6

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DateTimeOriginal"

    const v2, 0x9003

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x7

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DateTimeDigitized"

    const v2, 0x9004

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x8

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ComponentsConfiguration"

    const v2, 0x9101

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x9

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "CompressedBitsPerPixel"

    const v2, 0x9102

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xa

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ShutterSpeedValue"

    const v2, 0x9201

    const/16 v9, 0xa

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xb

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ApertureValue"

    const v2, 0x9202

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xc

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "BrightnessValue"

    const v2, 0x9203

    const/16 v9, 0xa

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xd

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExposureBiasValue"

    const v2, 0x9204

    const/16 v9, 0xa

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xe

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "MaxApertureValue"

    const v2, 0x9205

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xf

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubjectDistance"

    const v2, 0x9206

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x10

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "MeteringMode"

    const v2, 0x9207

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x11

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "LightSource"

    const v2, 0x9208

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x12

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Flash"

    const v2, 0x9209

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x13

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FocalLength"

    const v2, 0x920a

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x14

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubjectArea"

    const v2, 0x9214

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x15

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "MakerNote"

    const v2, 0x927c

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x16

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "UserComment"

    const v2, 0x9286

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x17

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubSecTime"

    const v2, 0x9290

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x18

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubSecTimeOriginal"

    const v2, 0x9291

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x19

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubSecTimeDigitized"

    const v2, 0x9292

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1a

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FlashpixVersion"

    const v2, 0xa000

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1b

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ColorSpace"

    const v2, 0xa001

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1c

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PixelXDimension"

    const v2, 0xa002

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1d

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PixelYDimension"

    const v2, 0xa003

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1e

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "RelatedSoundFile"

    const v2, 0xa004

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1f

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "InteroperabilityIFDPointer"

    const v2, 0xa005

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x20

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FlashEnergy"

    const v2, 0xa20b

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x21

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SpatialFrequencyResponse"

    const v2, 0xa20c

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x22

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FocalPlaneXResolution"

    const v2, 0xa20e

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x23

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FocalPlaneYResolution"

    const v2, 0xa20f

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x24

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FocalPlaneResolutionUnit"

    const v2, 0xa210

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x25

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubjectLocation"

    const v2, 0xa214

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x26

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExposureIndex"

    const v2, 0xa215

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x27

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SensingMethod"

    const v2, 0xa217

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x28

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FileSource"

    const v2, 0xa300

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x29

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SceneType"

    const v2, 0xa301

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x2a

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "CFAPattern"

    const v2, 0xa302

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x2b

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "CustomRendered"

    const v2, 0xa401

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x2c

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExposureMode"

    const v2, 0xa402

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x2d

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "WhiteBalance"

    const v2, 0xa403

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x2e

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DigitalZoomRatio"

    const v2, 0xa404

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x2f

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FocalLengthIn35mmFilm"

    const v2, 0xa405

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x30

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SceneCaptureType"

    const v2, 0xa406

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x31

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "GainControl"

    const v2, 0xa407

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x32

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Contrast"

    const v2, 0xa408

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x33

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Saturation"

    const v2, 0xa409

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x34

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Sharpness"

    const v2, 0xa40a

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x35

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DeviceSettingDescription"

    const v2, 0xa40b

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x36

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubjectDistanceRange"

    const v2, 0xa40c

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x37

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ImageUniqueID"

    const v2, 0xa420

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x38

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DNGVersion"

    const v2, 0xc612

    const/4 v9, 0x1

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x39

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DefaultCropSize"

    const v2, 0xc620

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x3a

    aput-object v0, v8, v1

    sput-object v8, Landroid/media/ExifInterface;->IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v0, 0x1f

    new-array v0, v0, [Landroid/media/ExifInterface$ExifTag;

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSVersionID"

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v1, v2, v8, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSLatitudeRef"

    const/4 v8, 0x1

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSLatitude"

    invoke-direct {v1, v2, v10, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v10

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSLongitudeRef"

    invoke-direct {v1, v2, v3, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSLongitude"

    invoke-direct {v1, v2, v4, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSAltitudeRef"

    const/4 v8, 0x1

    invoke-direct {v1, v2, v11, v8, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v11

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSAltitude"

    const/4 v8, 0x6

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSTimeStamp"

    const/4 v8, 0x7

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSSatellites"

    const/16 v8, 0x8

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSStatus"

    const/16 v8, 0x9

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSMeasureMode"

    const/16 v8, 0xa

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDOP"

    const/16 v8, 0xb

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSSpeedRef"

    const/16 v8, 0xc

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSSpeed"

    const/16 v8, 0xd

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSTrackRef"

    const/16 v8, 0xe

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSTrack"

    const/16 v8, 0xf

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSImgDirectionRef"

    const/16 v8, 0x10

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSImgDirection"

    const/16 v8, 0x11

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSMapDatum"

    const/16 v8, 0x12

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestLatitudeRef"

    const/16 v8, 0x13

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestLatitude"

    const/16 v8, 0x14

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestLongitudeRef"

    const/16 v8, 0x15

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestLongitude"

    const/16 v8, 0x16

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestBearingRef"

    const/16 v8, 0x17

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestBearing"

    const/16 v8, 0x18

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestDistanceRef"

    const/16 v8, 0x19

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestDistance"

    const/16 v8, 0x1a

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSProcessingMethod"

    const/16 v8, 0x1b

    const/4 v9, 0x7

    invoke-direct {v1, v2, v8, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSAreaInformation"

    const/16 v8, 0x1c

    const/4 v9, 0x7

    invoke-direct {v1, v2, v8, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDateStamp"

    const/16 v8, 0x1d

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDifferential"

    const/16 v8, 0x1e

    invoke-direct {v1, v2, v8, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/ExifInterface;->IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$ExifTag;

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "InteroperabilityIndex"

    const/4 v8, 0x1

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v0, 0x25

    new-array v8, v0, [Landroid/media/ExifInterface$ExifTag;

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "NewSubfileType"

    const/16 v2, 0xfe

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x0

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubfileType"

    const/16 v2, 0xff

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x1

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ThumbnailImageWidth"

    const/16 v2, 0x100

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v10

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ThumbnailImageLength"

    const/16 v2, 0x101

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v3

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "BitsPerSample"

    const/16 v2, 0x102

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v4

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Compression"

    const/16 v2, 0x103

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v11

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PhotometricInterpretation"

    const/16 v2, 0x106

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x6

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ImageDescription"

    const/16 v2, 0x10e

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x7

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Make"

    const/16 v2, 0x10f

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x8

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Model"

    const/16 v2, 0x110

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x9

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "StripOffsets"

    const/16 v2, 0x111

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xa

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Orientation"

    const/16 v2, 0x112

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xb

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SamplesPerPixel"

    const/16 v2, 0x115

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xc

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "RowsPerStrip"

    const/16 v2, 0x116

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xd

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "StripByteCounts"

    const/16 v2, 0x117

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xe

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "XResolution"

    const/16 v2, 0x11a

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xf

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YResolution"

    const/16 v2, 0x11b

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x10

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PlanarConfiguration"

    const/16 v2, 0x11c

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x11

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ResolutionUnit"

    const/16 v2, 0x128

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x12

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "TransferFunction"

    const/16 v2, 0x12d

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x13

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Software"

    const/16 v2, 0x131

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x14

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DateTime"

    const/16 v2, 0x132

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x15

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Artist"

    const/16 v2, 0x13b

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x16

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "WhitePoint"

    const/16 v2, 0x13e

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x17

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PrimaryChromaticities"

    const/16 v2, 0x13f

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x18

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubIFDPointer"

    const/16 v2, 0x14a

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x19

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "JPEGInterchangeFormat"

    const/16 v2, 0x201

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1a

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "JPEGInterchangeFormatLength"

    const/16 v2, 0x202

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1b

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YCbCrCoefficients"

    const/16 v2, 0x211

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1c

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YCbCrSubSampling"

    const/16 v2, 0x212

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1d

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YCbCrPositioning"

    const/16 v2, 0x213

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1e

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ReferenceBlackWhite"

    const/16 v2, 0x214

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1f

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Copyright"

    const v2, 0x8298

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x20

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExifIFDPointer"

    const v2, 0x8769

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x21

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "GPSInfoIFDPointer"

    const v2, 0x8825

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x22

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DNGVersion"

    const v2, 0xc612

    const/4 v9, 0x1

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x23

    aput-object v0, v8, v1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DefaultCropSize"

    const v2, 0xc620

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x24

    aput-object v0, v8, v1

    sput-object v8, Landroid/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "StripOffsets"

    const/16 v2, 0x111

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    sput-object v0, Landroid/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroid/media/ExifInterface$ExifTag;

    new-array v0, v3, [Landroid/media/ExifInterface$ExifTag;

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "ThumbnailImage"

    const/16 v8, 0x100

    const/4 v9, 0x7

    invoke-direct {v1, v2, v8, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "CameraSettingsIFDPointer"

    const/16 v8, 0x2020

    invoke-direct {v1, v2, v8, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "ImageProcessingIFDPointer"

    const/16 v8, 0x2040

    invoke-direct {v1, v2, v8, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v10

    sput-object v0, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroid/media/ExifInterface$ExifTag;

    new-array v0, v10, [Landroid/media/ExifInterface$ExifTag;

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "PreviewImageStart"

    const/16 v8, 0x101

    invoke-direct {v1, v2, v8, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "PreviewImageLength"

    const/16 v8, 0x102

    invoke-direct {v1, v2, v8, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$ExifTag;

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "AspectFrame"

    const/16 v8, 0x1113

    invoke-direct {v1, v2, v8, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$ExifTag;

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "ColorSpace"

    const/16 v8, 0x37

    invoke-direct {v1, v2, v8, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/ExifInterface;->PEF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v0, 0xa

    new-array v0, v0, [[Landroid/media/ExifInterface$ExifTag;

    sget-object v1, Landroid/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/media/ExifInterface;->IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/media/ExifInterface;->IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v1, v0, v10

    sget-object v1, Landroid/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v1, v0, v3

    sget-object v1, Landroid/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v1, v0, v4

    sget-object v1, Landroid/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v1, v0, v11

    sget-object v1, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Landroid/media/ExifInterface;->PEF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/media/ExifInterface$ExifTag;

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "SubIFDPointer"

    const/16 v8, 0x14a

    invoke-direct {v1, v2, v8, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "ExifIFDPointer"

    const v8, 0x8769

    invoke-direct {v1, v2, v8, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSInfoIFDPointer"

    const v8, 0x8825

    invoke-direct {v1, v2, v8, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v10

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "InteroperabilityIFDPointer"

    const v8, 0xa005

    invoke-direct {v1, v2, v8, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "CameraSettingsIFDPointer"

    const/16 v8, 0x2020

    const/4 v9, 0x1

    invoke-direct {v1, v2, v8, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "ImageProcessingIFDPointer"

    const/16 v8, 0x2040

    const/4 v9, 0x1

    invoke-direct {v1, v2, v8, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v11

    sput-object v0, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "JPEGInterchangeFormat"

    const/16 v2, 0x201

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    sput-object v0, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "JPEGInterchangeFormatLength"

    const/16 v2, 0x202

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    sput-object v0, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    new-array v1, v11, [Ljava/lang/String;

    const-string/jumbo v2, "FNumber"

    const/4 v5, 0x0

    aput-object v2, v1, v5

    const-string/jumbo v2, "DigitalZoomRatio"

    const/4 v5, 0x1

    aput-object v2, v1, v5

    const-string/jumbo v2, "ExposureTime"

    aput-object v2, v1, v10

    const-string/jumbo v2, "SubjectDistance"

    aput-object v2, v1, v3

    const-string/jumbo v2, "GPSTimeStamp"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    const-string/jumbo v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    const-string/jumbo v0, "Exif\u0000\u0000"

    sget-object v1, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    sget-object v0, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v6, 0x0

    :goto_0
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    if-ge v6, v0, :cond_1

    sget-object v0, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v6

    sget-object v0, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v6

    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    aget-object v1, v0, v6

    const/4 v0, 0x0

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v7, v1, v0

    sget-object v5, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v5, v5, v6

    iget v8, v7, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v5, v5, v6

    iget-object v8, v7, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v1, v1, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v1, v1, v10

    iget v1, v1, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v1, v1, v4

    iget v1, v1, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v1, v1, v11

    iget v1, v1, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, ".*[1-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_3
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_4
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v3, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v3, v3

    new-array v3, v3, [Ljava/util/HashMap;

    iput-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "fileDescriptor cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iput-object v4, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v4, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-static {p1}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object p1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, v2}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3

    :cond_1
    iput-object v4, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    :catchall_0
    move-exception v3

    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    instance-of v0, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v0, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V

    return-void

    :cond_1
    instance-of v0, p1, Ljava/io/FileInputStream;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v1, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    move-object v0, p1

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    :cond_2
    iput-object v1, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    new-array v2, v2, [Ljava/util/HashMap;

    iput-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "filename cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v0, 0x0

    iput-object v3, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    iput-object p1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    :goto_0
    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v0, v1

    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_1
.end method

.method private addDefaultValuesForCompatibility()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const-string/jumbo v1, "DateTimeOriginal"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v4

    const-string/jumbo v2, "DateTime"

    invoke-static {v0}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo v1, "ImageWidth"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v4

    const-string/jumbo v2, "ImageWidth"

    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v6, v7, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string/jumbo v1, "ImageLength"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v4

    const-string/jumbo v2, "ImageLength"

    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v6, v7, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string/jumbo v1, "Orientation"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v4

    const-string/jumbo v2, "Orientation"

    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v6, v7, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string/jumbo v1, "LightSource"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string/jumbo v2, "LightSource"

    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v6, v7, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private containsMatch([B[B)Z
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    array-length v3, p2

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_3

    const/4 v1, 0x0

    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_0

    add-int v2, v0, v1

    aget-byte v2, p1, v2

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    const/4 v2, 0x1

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method private static convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F
    .locals 18

    :try_start_0
    const-string/jumbo v9, ","

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string/jumbo v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    div-double v2, v14, v16

    const/4 v9, 0x1

    aget-object v9, v8, v9

    const-string/jumbo v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    div-double v6, v14, v16

    const/4 v9, 0x2

    aget-object v9, v8, v9

    const-string/jumbo v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    div-double v12, v14, v16

    const-wide/high16 v14, 0x404e000000000000L    # 60.0

    div-double v14, v6, v14

    add-double/2addr v14, v2

    const-wide v16, 0x40ac200000000000L    # 3600.0

    div-double v16, v12, v16

    add-double v10, v14, v16

    const-string/jumbo v9, "S"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "W"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    neg-double v14, v10

    double-to-float v9, v14

    return v9

    :cond_1
    double-to-float v9, v10

    return v9

    :catch_0
    move-exception v4

    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9
.end method

.method private getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    int-to-long v6, p2

    invoke-virtual {p1, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    move v1, p2

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid marker: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit16 v7, v4, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v5

    const/16 v6, -0x28

    if-eq v5, v6, :cond_1

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid marker: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit16 v7, v4, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid marker:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit16 v7, v4, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v4

    add-int/lit8 v1, v1, 0x1

    const/16 v5, -0x27

    if-eq v4, v5, :cond_3

    const/16 v5, -0x26

    if-ne v4, v5, :cond_4

    :cond_3
    iget-object v5, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    add-int/lit8 v3, v5, -0x2

    add-int/lit8 v1, v1, 0x2

    if-gez v3, :cond_5

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Invalid length"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    sparse-switch v4, :sswitch_data_0

    :cond_6
    :goto_1
    if-gez v3, :cond_c

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Invalid length"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :sswitch_0
    const/4 v5, 0x6

    if-lt v3, v5, :cond_6

    const/4 v5, 0x6

    new-array v2, v5, [B

    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_7

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Invalid exif"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_7
    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v3, v3, -0x6

    sget-object v5, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_6

    if-gtz v3, :cond_8

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Invalid exif"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_8
    iput v1, p0, Landroid/media/ExifInterface;->mExifOffset:I

    new-array v0, v3, [B

    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v5

    if-eq v5, v3, :cond_9

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Invalid exif"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_9
    add-int/2addr v1, v3

    const/4 v3, 0x0

    invoke-direct {p0, v0, p3}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    goto :goto_1

    :sswitch_1
    new-array v0, v3, [B

    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v5

    if-eq v5, v3, :cond_a

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Invalid exif"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_a
    const/4 v3, 0x0

    const-string/jumbo v5, "UserComment"

    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const-string/jumbo v6, "UserComment"

    new-instance v7, Ljava/lang/String;

    sget-object v8, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v7}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :sswitch_2
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_b

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Invalid SOFx"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_b
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p3

    const-string/jumbo v6, "ImageLength"

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v7

    int-to-long v8, v7

    iget-object v7, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v8, v9, v7}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p3

    const-string/jumbo v6, "ImageWidth"

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v7

    int-to-long v8, v7

    iget-object v7, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v8, v9, v7}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x5

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v5

    if-eq v5, v3, :cond_d

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Invalid JPEG segment"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_d
    add-int/2addr v1, v3

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x40 -> :sswitch_2
        -0x3f -> :sswitch_2
        -0x3e -> :sswitch_2
        -0x3d -> :sswitch_2
        -0x3b -> :sswitch_2
        -0x3a -> :sswitch_2
        -0x39 -> :sswitch_2
        -0x37 -> :sswitch_2
        -0x36 -> :sswitch_2
        -0x35 -> :sswitch_2
        -0x33 -> :sswitch_2
        -0x32 -> :sswitch_2
        -0x31 -> :sswitch_2
        -0x1f -> :sswitch_0
        -0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method private getMimeType(Ljava/io/BufferedInputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x4

    const/16 v2, 0x1388

    invoke-virtual {p1, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    new-array v1, v2, [B

    invoke-virtual {p1, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v0

    if-eq v0, v2, :cond_1

    const-string/jumbo v2, "ExifInterface"

    const-string/jumbo v3, "File size is smaller than 5000"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    invoke-static {v1}, Landroid/media/ExifInterface;->isJpegFormat([B)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ExifInterface"

    const-string/jumbo v3, "Small Jpeg file"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    return v4

    :cond_0
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    :cond_1
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    invoke-static {v1}, Landroid/media/ExifInterface;->isJpegFormat([B)Z

    move-result v2

    if-eqz v2, :cond_2

    return v4

    :cond_2
    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->isRafFormat([B)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x9

    return v2

    :cond_3
    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->isOrfFormat([B)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x7

    return v2

    :cond_4
    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->isRw2Format([B)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xa

    return v2

    :cond_5
    const/4 v2, 0x0

    return v2
.end method

.method private getOrfAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    iget-object v12, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const-string/jumbo v13, "MakerNote"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v4, :cond_3

    new-instance v5, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v12, v4, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v5, v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    iget-object v12, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    sget-object v12, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    array-length v12, v12

    new-array v6, v12, [B

    invoke-virtual {v5, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    const-wide/16 v12, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    sget-object v12, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    array-length v12, v12

    new-array v7, v12, [B

    invoke-virtual {v5, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    sget-object v12, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    invoke-static {v6, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_4

    const-wide/16 v12, 0x8

    invoke-virtual {v5, v12, v13}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    :cond_0
    :goto_0
    const/4 v12, 0x6

    invoke-direct {p0, v5, v12}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    iget-object v12, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x7

    aget-object v12, v12, v13

    const-string/jumbo v13, "PreviewImageStart"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v12, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x7

    aget-object v12, v12, v13

    const-string/jumbo v13, "PreviewImageLength"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    iget-object v12, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x5

    aget-object v12, v12, v13

    const-string/jumbo v13, "JPEGInterchangeFormat"

    invoke-virtual {v12, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x5

    aget-object v12, v12, v13

    const-string/jumbo v13, "JPEGInterchangeFormatLength"

    invoke-virtual {v12, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v12, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v13, 0x8

    aget-object v12, v12, v13

    const-string/jumbo v13, "AspectFrame"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_3

    const/4 v12, 0x4

    new-array v1, v12, [I

    iget-object v12, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v12}, Landroid/media/ExifInterface$ExifAttribute;->-wrap0(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v12, 0x2

    aget v12, v1, v12

    const/4 v13, 0x0

    aget v13, v1, v13

    if-le v12, v13, :cond_3

    const/4 v12, 0x3

    aget v12, v1, v12

    const/4 v13, 0x1

    aget v13, v1, v13

    if-le v12, v13, :cond_3

    const/4 v12, 0x2

    aget v12, v1, v12

    const/4 v13, 0x0

    aget v13, v1, v13

    sub-int/2addr v12, v13

    add-int/lit8 v10, v12, 0x1

    const/4 v12, 0x3

    aget v12, v1, v12

    const/4 v13, 0x1

    aget v13, v1, v13

    sub-int/2addr v12, v13

    add-int/lit8 v8, v12, 0x1

    if-ge v10, v8, :cond_2

    add-int/2addr v10, v8

    sub-int v8, v10, v8

    sub-int/2addr v10, v8

    :cond_2
    iget-object v12, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v10, v12}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v11

    iget-object v12, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v8, v12}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    iget-object v12, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const-string/jumbo v13, "ImageWidth"

    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const-string/jumbo v13, "ImageLength"

    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void

    :cond_4
    sget-object v12, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    invoke-static {v7, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_0

    const-wide/16 v12, 0xc

    invoke-virtual {v5, v12, v13}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_0
.end method

.method private getRafAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v12, 0x54

    invoke-virtual {p1, v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    const/4 v12, 0x4

    new-array v6, v12, [B

    const/4 v12, 0x4

    new-array v0, v12, [B

    invoke-virtual {p1, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    const/4 v12, 0x4

    invoke-virtual {p1, v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    const/4 v12, 0x5

    invoke-direct {p0, p1, v10, v12}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    int-to-long v12, v9

    invoke-virtual {p1, v12, v13}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    sget-object v12, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v8

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v8, :cond_1

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v11

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v7

    sget-object v12, Landroid/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroid/media/ExifInterface$ExifTag;

    iget v12, v12, Landroid/media/ExifInterface$ExifTag;->number:I

    if-ne v11, v12, :cond_0

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v2

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v4

    iget-object v12, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v2, v12}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    iget-object v12, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v4, v12}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    iget-object v12, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const-string/jumbo v13, "ImageLength"

    invoke-virtual {v12, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const-string/jumbo v13, "ImageWidth"

    invoke-virtual {v12, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p1, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x9

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v3

    invoke-direct {p0, p1, v3}, Landroid/media/ExifInterface;->parseTiffHeaders(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    invoke-direct {p0, p1, v4}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    invoke-direct {p0, p1, v4}, Landroid/media/ExifInterface;->updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v3, 0x5

    invoke-direct {p0, p1, v3}, Landroid/media/ExifInterface;->updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v3, 0x4

    invoke-direct {p0, p1, v3}, Landroid/media/ExifInterface;->updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->validateImages(Ljava/io/InputStream;)V

    iget v3, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v6

    const-string/jumbo v4, "MakerNote"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v1, :cond_0

    new-instance v2, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v3, v1, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    const-wide/16 v4, 0x6

    invoke-virtual {v2, v4, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    invoke-direct {p0, v2, v7}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v7

    const-string/jumbo v4, "ColorSpace"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v6

    const-string/jumbo v4, "ColorSpace"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private getRw2Attributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    const-string/jumbo v4, "JpgFromRaw"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v1, :cond_0

    iget v3, p0, Landroid/media/ExifInterface;->mRw2JpgFromRawOffset:I

    const/4 v4, 0x5

    invoke-direct {p0, p1, v3, v4}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    :cond_0
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    const-string/jumbo v4, "ISO"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v6

    const-string/jumbo v4, "ISOSpeedRatings"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v6

    const-string/jumbo v4, "ISOSpeedRatings"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private static guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string/jumbo v15, ","

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_9

    const-string/jumbo v15, ","

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    aget-object v15, v6, v15

    invoke-static {v15}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    iget-object v15, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    return-object v2

    :cond_0
    const/4 v9, 0x1

    :goto_0
    array-length v15, v6

    if-ge v9, v15, :cond_8

    aget-object v15, v6, v9

    invoke-static {v15}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v8

    const/4 v7, -0x1

    const/4 v14, -0x1

    iget-object v15, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_1

    iget-object v15, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_2

    :cond_1
    iget-object v15, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_2
    iget-object v15, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    iget-object v15, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_3

    iget-object v15, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_4

    :cond_3
    iget-object v15, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v14

    :cond_4
    const/4 v15, -0x1

    if-ne v7, v15, :cond_5

    const/4 v15, -0x1

    if-ne v14, v15, :cond_5

    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15

    :cond_5
    const/4 v15, -0x1

    if-ne v7, v15, :cond_7

    new-instance v2, Landroid/util/Pair;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, -0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v15, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_7
    const/4 v15, -0x1

    if-ne v14, v15, :cond_6

    new-instance v2, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, -0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v15, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    return-object v2

    :cond_9
    const-string/jumbo v15, "/"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_f

    const-string/jumbo v15, "/"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v15, v11

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    const/4 v15, 0x0

    :try_start_0
    aget-object v15, v11, v15

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-long v12, v0

    const/4 v15, 0x1

    aget-object v15, v11, v15

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-long v4, v0

    const-wide/16 v16, 0x0

    cmp-long v15, v12, v16

    if-ltz v15, :cond_a

    const-wide/16 v16, 0x0

    cmp-long v15, v4, v16

    if-gez v15, :cond_b

    :cond_a
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0xa

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15

    :cond_b
    const-wide/32 v16, 0x7fffffff

    cmp-long v15, v12, v16

    if-gtz v15, :cond_c

    const-wide/32 v16, 0x7fffffff

    cmp-long v15, v4, v16

    if-lez v15, :cond_d

    :cond_c
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15

    :cond_d
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0xa

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v15

    :catch_0
    move-exception v3

    :cond_e
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15

    :cond_f
    :try_start_1
    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-ltz v15, :cond_10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/32 v18, 0xffff

    cmp-long v15, v16, v18

    if-gtz v15, :cond_10

    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15

    :cond_10
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-gez v15, :cond_11

    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15

    :cond_11
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v15

    :catch_1
    move-exception v3

    :try_start_2
    invoke-static/range {p0 .. p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0xc

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v15

    :catch_2
    move-exception v3

    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15
.end method

.method private handleThumbnailFromJfif(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v5, "JPEGInterchangeFormat"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    const-string/jumbo v5, "JPEGInterchangeFormatLength"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget-object v5, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v4

    iget-object v5, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v5, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    iget v5, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_3

    :cond_0
    iget v5, p0, Landroid/media/ExifInterface;->mExifOffset:I

    add-int/2addr v4, v5

    :cond_1
    :goto_0
    if-lez v4, :cond_2

    if-lez v3, :cond_2

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    iput v4, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    iput v3, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    const/4 v5, 0x6

    iput v5, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v5, :cond_2

    iget-object v5, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v5, :cond_2

    iget-object v5, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v5, :cond_2

    new-array v2, v3, [B

    int-to-long v6, v4

    invoke-virtual {p1, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    iput-object v2, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    :cond_2
    return-void

    :cond_3
    iget v5, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v6, 0xa

    if-eq v5, v6, :cond_0

    iget v5, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1

    iget v5, p0, Landroid/media/ExifInterface;->mOrfMakerNoteOffset:I

    add-int/2addr v4, v5

    goto :goto_0
.end method

.method private handleThumbnailFromStrips(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v14, "StripOffsets"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/ExifInterface$ExifAttribute;

    const-string/jumbo v14, "StripByteCounts"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v12, :cond_2

    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v12, v14}, Landroid/media/ExifInterface$ExifAttribute;->-wrap0(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [J

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v8, v14}, Landroid/media/ExifInterface$ExifAttribute;->-wrap0(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    invoke-static {v7}, Ljava/util/Arrays;->stream([J)Ljava/util/stream/LongStream;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v14

    long-to-int v14, v14

    new-array v13, v14, [B

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v14, v11

    if-ge v4, v14, :cond_1

    aget-wide v14, v11, v4

    long-to-int v10, v14

    aget-wide v14, v7, v4

    long-to-int v6, v14

    sub-int v5, v10, v3

    if-gez v5, :cond_0

    const-string/jumbo v14, "ExifInterface"

    const-string/jumbo v15, "Invalid strip offset value"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    int-to-long v14, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    add-int/2addr v3, v5

    new-array v9, v6, [B

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    add-int/2addr v3, v6

    array-length v14, v9

    const/4 v15, 0x0

    invoke-static {v9, v15, v13, v2, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v14, v9

    add-int/2addr v2, v14

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    array-length v14, v13

    move-object/from16 v0, p0

    iput v14, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    :cond_2
    return-void
.end method

.method private static isJpegFormat([B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    aget-byte v1, p0, v0

    sget-object v2, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private isOrfFormat([B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v2

    iput-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v0

    const/16 v2, 0x4f52

    if-eq v0, v2, :cond_0

    const/16 v2, 0x5352

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isRafFormat([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v2, "FUJIFILMCCD-RAW"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-byte v2, p1, v0

    aget-byte v3, v1, v0

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private isRw2Format([B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v2

    iput-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v0

    const/16 v2, 0x55

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private static isSeekableFD(Ljava/io/FileDescriptor;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    :try_start_0
    sget v1, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-static {p0, v2, v3, v1}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private isSupportedDataType(Ljava/util/HashMap;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const-string/jumbo v4, "BitsPerSample"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_3

    iget-object v4, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->-wrap0(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    sget-object v4, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-eqz v4, :cond_0

    return v6

    :cond_0
    iget v4, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    const-string/jumbo v4, "PhotometricInterpretation"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v2, :cond_3

    iget-object v4, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    if-ne v3, v6, :cond_1

    sget-object v4, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    sget-object v4, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    return v6

    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method private isThumbnail(Ljava/util/HashMap;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x200

    const-string/jumbo v4, "ImageLength"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    const-string/jumbo v4, "ImageWidth"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    iget-object v4, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    iget-object v4, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    if-gt v1, v5, :cond_0

    if-gt v3, v5, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method private loadAttributes(Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    sget-object v6, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v6, v6

    if-ge v3, v6, :cond_0

    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    aput-object v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/io/BufferedInputStream;

    const/16 v6, 0x1388

    invoke-direct {v4, p1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object v0, v4

    check-cast v0, Ljava/io/BufferedInputStream;

    move-object v6, v0

    invoke-direct {p0, v6}, Landroid/media/ExifInterface;->getMimeType(Ljava/io/BufferedInputStream;)I

    move-result v6

    iput v6, p0, Landroid/media/ExifInterface;->mMimeType:I

    new-instance v5, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v5, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iget v6, p0, Landroid/media/ExifInterface;->mMimeType:I

    packed-switch v6, :pswitch_data_0

    :goto_1
    invoke-direct {p0, v5}, Landroid/media/ExifInterface;->setThumbnailData(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    move-object p1, v4

    :goto_2
    return-void

    :pswitch_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_2
    invoke-direct {p0, v5, v6, v7}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object p1, v4

    :goto_3
    const/4 v6, 0x0

    :try_start_3
    iput-boolean v6, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    goto :goto_2

    :pswitch_1
    :try_start_4
    invoke-direct {p0, v5}, Landroid/media/ExifInterface;->getRafAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v2

    move-object p1, v4

    :goto_4
    const/4 v6, 0x0

    :try_start_5
    iput-boolean v6, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z

    const-string/jumbo v6, "ExifInterface"

    const-string/jumbo v7, "NumberFormatException"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    goto :goto_2

    :pswitch_2
    :try_start_6
    invoke-direct {p0, v5}, Landroid/media/ExifInterface;->getOrfAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    move-object p1, v4

    :goto_5
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    throw v6

    :pswitch_3
    :try_start_7
    invoke-direct {p0, v5}, Landroid/media/ExifInterface;->getRw2Attributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, v5}, Landroid/media/ExifInterface;->getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v6

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private parseTiffHeaders(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v2

    iput-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v1

    iget v2, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid start code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    if-lt v0, p2, :cond_2

    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid first Ifd offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    add-int/lit8 v0, v0, -0x8

    if-lez v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v2

    if-eq v2, v0, :cond_3

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t jump to first Ifd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    return-void
.end method

.method private printAttributes()V
    .locals 7

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    const-string/jumbo v4, "ExifInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The size of tag group["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    const-string/jumbo v4, "ExifInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tagName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", tagType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/media/ExifInterface$ExifAttribute;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", tagValue: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v6}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid byte order: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object v1

    :sswitch_1
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4949 -> :sswitch_0
        0x4d4d -> :sswitch_1
    .end sparse-switch
.end method

.method private readExifSegment([BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    array-length v2, p1

    invoke-direct {p0, v0, v2}, Landroid/media/ExifInterface;->parseTiffHeaders(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    :try_start_0
    invoke-direct {p0, v0, p2}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "ExifInterface"

    const-string/jumbo v3, "Android failed to perform EXIF analysis on image: \n"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-get1(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v25

    add-int/lit8 v25, v25, 0x2

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v18

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-get1(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v25

    mul-int/lit8 v26, v18, 0xc

    add-int v25, v25, v26

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v10, 0x0

    :goto_0
    move/from16 v0, v18

    if-ge v10, v0, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v25

    add-int/lit8 v25, v25, 0x4

    move/from16 v0, v25

    int-to-long v14, v0

    sget-object v25, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v25, v25, p2

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/media/ExifInterface$ExifTag;

    const-wide/16 v6, 0x0

    const/16 v24, 0x0

    if-nez v22, :cond_3

    const-string/jumbo v25, "ExifInterface"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Skip the tag entry since tag number is not defined: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-nez v24, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    :cond_2
    :goto_2
    add-int/lit8 v25, v10, 0x1

    move/from16 v0, v25

    int-to-short v10, v0

    goto :goto_0

    :cond_3
    if-lez v9, :cond_4

    sget-object v25, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v9, v0, :cond_5

    :cond_4
    const-string/jumbo v25, "ExifInterface"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Skip the tag entry since data format is invalid: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v26, v0

    sget-object v25, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    aget v25, v25, v9

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    mul-long v6, v26, v28

    const-wide/16 v26, 0x0

    cmp-long v25, v6, v26

    if-ltz v25, :cond_6

    const-wide/32 v26, 0x7fffffff

    cmp-long v25, v6, v26

    if-lez v25, :cond_7

    :cond_6
    const-string/jumbo v25, "ExifInterface"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Skip the tag entry since the number of components is invalid: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    const/16 v24, 0x1

    goto :goto_1

    :cond_8
    const-wide/16 v26, 0x4

    cmp-long v25, v6, v26

    if-lez v25, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/ExifInterface;->mMimeType:I

    move/from16 v25, v0

    const/16 v26, 0x7

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "MakerNote"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_b

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/ExifInterface;->mOrfMakerNoteOffset:I

    :cond_9
    :goto_3
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v26, v26, v6

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    cmp-long v25, v26, v28

    if-gtz v25, :cond_d

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    :cond_a
    sget-object v25, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_f

    const-wide/16 v20, -0x1

    packed-switch v9, :pswitch_data_0

    :goto_4
    :pswitch_0
    const-wide/16 v26, 0x0

    cmp-long v25, v20, v26

    if-lez v25, :cond_e

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    cmp-long v25, v20, v26

    if-gez v25, :cond_e

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_2

    :cond_b
    const/16 v25, 0x6

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "ThumbnailImage"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_9

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/ExifInterface;->mOrfThumbnailOffset:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/ExifInterface;->mOrfThumbnailLength:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v25, v0

    const/16 v26, 0x6

    move/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/ExifInterface;->mOrfThumbnailOffset:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v25, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/ExifInterface;->mOrfThumbnailLength:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v25, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    aget-object v25, v25, v26

    const-string/jumbo v26, "Compression"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    aget-object v25, v25, v26

    const-string/jumbo v26, "JPEGInterchangeFormat"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    aget-object v25, v25, v26

    const-string/jumbo v26, "JPEGInterchangeFormatLength"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/ExifInterface;->mMimeType:I

    move/from16 v25, v0

    const/16 v26, 0xa

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "JpgFromRaw"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_9

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/ExifInterface;->mRw2JpgFromRawOffset:I

    goto/16 :goto_3

    :cond_d
    const-string/jumbo v25, "ExifInterface"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Skip the tag entry since data offset is invalid: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v20, v0

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v20, v0

    goto/16 :goto_4

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v20

    goto/16 :goto_4

    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v20, v0

    goto/16 :goto_4

    :cond_e
    const-string/jumbo v25, "ExifInterface"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Skip jump into the IFD since its offset is invalid: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_f
    long-to-int v0, v6

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v5, v0, [B

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    new-instance v4, Landroid/media/ExifInterface$ExifAttribute;

    const/16 v25, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v4, v9, v0, v5, v1}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[BLandroid/media/ExifInterface$ExifAttribute;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v25, v0

    aget-object v25, v25, p2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "DNGVersion"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_10

    const/16 v25, 0x3

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/ExifInterface;->mMimeType:I

    :cond_10
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "Make"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_11

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "Model"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "PENTAX"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_13

    :cond_12
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "Compression"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v25

    const v26, 0xffff

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    :cond_13
    const/16 v25, 0x8

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/ExifInterface;->mMimeType:I

    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    cmp-long v25, v26, v14

    if-eqz v25, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_2

    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v25

    add-int/lit8 v25, v25, 0x4

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v13

    const/16 v25, 0x8

    move/from16 v0, v25

    if-le v13, v0, :cond_16

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v25

    move/from16 v0, v25

    if-ge v13, v0, :cond_16

    int-to-long v0, v13

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_17

    const/16 v25, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    :cond_16
    :goto_6
    return-void

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v25, v0

    const/16 v26, 0x5

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_16

    const/16 v25, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private removeAttribute(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private retrieveJpegImageSize(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string/jumbo v5, "ImageLength"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string/jumbo v5, "ImageWidth"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string/jumbo v5, "JPEGInterchangeFormat"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v3, :cond_1

    iget-object v4, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    invoke-direct {p0, p1, v2, p2}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    :cond_1
    return-void
.end method

.method private saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, -0x28

    const/4 v11, 0x6

    const/4 v10, -0x1

    const/4 v9, 0x0

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v2, p2, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    if-eq v7, v10, :cond_0

    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid marker"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    invoke-virtual {v2, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    if-eq v7, v8, :cond_1

    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid marker"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    invoke-virtual {v2, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-virtual {v2, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    const/16 v7, -0x1f

    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-direct {p0, v2, v11}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;I)I

    const/16 v7, 0x1000

    new-array v0, v7, [B

    :cond_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    if-eq v5, v10, :cond_3

    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid marker"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    sparse-switch v5, :sswitch_data_0

    invoke-virtual {v2, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-virtual {v2, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    add-int/lit8 v4, v4, -0x2

    if-gez v4, :cond_8

    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid length"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :sswitch_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v7

    add-int/lit8 v4, v7, -0x2

    if-gez v4, :cond_4

    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid length"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    new-array v3, v11, [B

    if-lt v4, v11, :cond_6

    invoke-virtual {v1, v3}, Ljava/io/DataInputStream;->read([B)I

    move-result v7

    if-eq v7, v11, :cond_5

    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid exif"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_5
    sget-object v7, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v3, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_6

    add-int/lit8 v7, v4, -0x6

    invoke-virtual {v1, v7}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v7

    add-int/lit8 v8, v4, -0x6

    if-eq v7, v8, :cond_2

    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid length"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6
    invoke-virtual {v2, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-virtual {v2, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    add-int/lit8 v7, v4, 0x2

    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    if-lt v4, v11, :cond_7

    add-int/lit8 v4, v4, -0x6

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    :cond_7
    :goto_0
    if-lez v4, :cond_2

    array-length v7, v0

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v1, v0, v9, v7}, Ljava/io/DataInputStream;->read([BII)I

    move-result v6

    if-ltz v6, :cond_2

    invoke-virtual {v2, v0, v9, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    sub-int/2addr v4, v6

    goto :goto_0

    :sswitch_1
    invoke-virtual {v2, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-virtual {v2, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-static {v1, v2}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    return-void

    :cond_8
    :goto_1
    if-lez v4, :cond_2

    array-length v7, v0

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v1, v0, v9, v7}, Ljava/io/DataInputStream;->read([BII)I

    move-result v6

    if-ltz v6, :cond_2

    invoke-virtual {v2, v0, v9, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    sub-int/2addr v4, v6

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x27 -> :sswitch_1
        -0x26 -> :sswitch_1
        -0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method private setThumbnailData(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x4

    aget-object v1, v2, v3

    const-string/jumbo v2, "Compression"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    iput v2, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    iget v2, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0, p1, v1}, Landroid/media/ExifInterface;->handleThumbnailFromJfif(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->isSupportedDataType(Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, v1}, Landroid/media/ExifInterface;->handleThumbnailFromStrips(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v1}, Landroid/media/ExifInterface;->handleThumbnailFromJfif(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method private swapBasedOnImageSize(II)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v9, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, p1

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, p2

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v9, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, p1

    const-string/jumbo v10, "ImageLength"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v9, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, p1

    const-string/jumbo v10, "ImageWidth"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v9, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, p2

    const-string/jumbo v10, "ImageLength"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v9, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, p2

    const-string/jumbo v10, "ImageWidth"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_2

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz v4, :cond_2

    if-eqz v6, :cond_2

    iget-object v9, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v9}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    iget-object v9, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v9}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    iget-object v9, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v9}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v5

    iget-object v9, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v9}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v7

    if-ge v1, v5, :cond_2

    if-ge v3, v7, :cond_2

    iget-object v9, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v9, p1

    iget-object v9, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    iget-object v10, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, p2

    aput-object v10, v9, p1

    iget-object v9, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aput-object v8, v9, p2

    goto :goto_0
.end method

.method private updateAttribute(Ljava/lang/String;Landroid/media/ExifInterface$ExifAttribute;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    const-string/jumbo v20, "DefaultCropSize"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    const-string/jumbo v20, "SensorTopBorder"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/media/ExifInterface$ExifAttribute;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    const-string/jumbo v20, "SensorLeftBorder"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/ExifInterface$ExifAttribute;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    const-string/jumbo v20, "SensorBottomBorder"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    const-string/jumbo v20, "SensorRightBorder"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v4, :cond_2

    iget v0, v4, Landroid/media/ExifInterface$ExifAttribute;->format:I

    move/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Landroid/media/ExifInterface$ExifAttribute;->-wrap0(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/media/ExifInterface$Rational;

    const/16 v19, 0x0

    aget-object v19, v6, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Landroid/media/ExifInterface$ExifAttribute;->createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    const/16 v19, 0x1

    aget-object v19, v6, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Landroid/media/ExifInterface$ExifAttribute;->createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v8

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    const-string/jumbo v20, "ImageWidth"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    const-string/jumbo v20, "ImageLength"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Landroid/media/ExifInterface$ExifAttribute;->-wrap0(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    const/16 v19, 0x0

    aget v19, v5, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    const/16 v19, 0x1

    aget v19, v5, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v8

    goto :goto_0

    :cond_2
    if-eqz v16, :cond_3

    if-eqz v11, :cond_3

    if-eqz v2, :cond_3

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v12

    move/from16 v0, v17

    if-le v3, v0, :cond_0

    if-le v15, v12, :cond_0

    sub-int v13, v3, v17

    sub-int v18, v15, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v13, v0}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    const-string/jumbo v20, "ImageLength"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    const-string/jumbo v20, "ImageWidth"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_3
    invoke-direct/range {p0 .. p2}, Landroid/media/ExifInterface;->retrieveJpegImageSize(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto/16 :goto_1
.end method

.method private validateImages(Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x4

    invoke-direct {p0, v6, v5}, Landroid/media/ExifInterface;->swapBasedOnImageSize(II)V

    invoke-direct {p0, v6, v4}, Landroid/media/ExifInterface;->swapBasedOnImageSize(II)V

    invoke-direct {p0, v5, v4}, Landroid/media/ExifInterface;->swapBasedOnImageSize(II)V

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v7

    const-string/jumbo v3, "PixelXDimension"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v7

    const-string/jumbo v3, "PixelYDimension"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v6

    const-string/jumbo v3, "ImageWidth"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v6

    const-string/jumbo v3, "ImageLength"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v5

    invoke-direct {p0, v2}, Landroid/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    aput-object v3, v2, v4

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v5

    :cond_1
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v4

    invoke-direct {p0, v2}, Landroid/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "ExifInterface"

    const-string/jumbo v3, "No image meets the size requirements of a thumbnail image."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;I)I
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v11, v0, [I

    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v10, v0, [I

    sget-object v22, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v21, 0x0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    aget-object v17, v22, v21

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    :cond_0
    sget-object v21, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    sget-object v21, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    const/4 v12, 0x0

    :goto_1
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v12

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v22

    const/16 v21, 0x0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    :goto_2
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    aget-object v13, v22, v21

    move-object v6, v13

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    if-nez v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v24, v0

    aget-object v24, v24, v12

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v23, 0x1

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v23, 0x2

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v23, 0x3

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const/4 v9, 0x0

    :goto_3
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_a

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/ExifInterface$ExifAttribute;

    invoke-virtual {v8}, Landroid/media/ExifInterface$ExifAttribute;->size()I

    move-result v15

    const/16 v21, 0x4

    move/from16 v0, v21

    if-le v15, v0, :cond_8

    add-int v16, v16, v15

    goto :goto_4

    :cond_9
    aget v21, v10, v9

    add-int v21, v21, v16

    aput v21, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_a
    const/16 v14, 0x8

    const/4 v12, 0x0

    :goto_5
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v12

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_b

    aput v14, v11, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v12

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v21

    mul-int/lit8 v21, v21, 0xc

    add-int/lit8 v21, v21, 0x2

    add-int/lit8 v21, v21, 0x4

    aget v22, v10, v12

    add-int v21, v21, v22

    add-int v14, v14, v21

    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    move/from16 v21, v0

    if-eqz v21, :cond_d

    move/from16 v19, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int v21, p2, v19

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/ExifInterface;->mThumbnailOffset:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    move/from16 v21, v0

    add-int v14, v14, v21

    :cond_d
    add-int/lit8 v20, v14, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v23, 0x1

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v23, v11, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v23, 0x2

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget v23, v11, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v23, 0x3

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget v23, v11, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    sget-object v21, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v21, v0

    sget-object v22, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_12

    const/16 v21, 0x4d4d

    :goto_6
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeShort(S)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    const/16 v21, 0x2a

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    const-wide/16 v22, 0x8

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    const/4 v12, 0x0

    :goto_7
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v12

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v12

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    aget v21, v11, v12

    add-int/lit8 v21, v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v22, v0

    aget-object v22, v22, v12

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v22

    mul-int/lit8 v22, v22, 0xc

    add-int v21, v21, v22

    add-int/lit8 v5, v21, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v12

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_11
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    sget-object v21, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v21, v21, v12

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/media/ExifInterface$ExifTag;->number:I

    move/from16 v18, v0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    invoke-virtual {v4}, Landroid/media/ExifInterface$ExifAttribute;->size()I

    move-result v15

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    iget v0, v4, Landroid/media/ExifInterface$ExifAttribute;->format:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    iget v0, v4, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    const/16 v21, 0x4

    move/from16 v0, v21

    if-le v15, v0, :cond_13

    int-to-long v0, v5

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    add-int/2addr v5, v15

    goto :goto_8

    :cond_12
    const/16 v21, 0x4949

    goto/16 :goto_6

    :cond_13
    iget-object v0, v4, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    const/16 v21, 0x4

    move/from16 v0, v21

    if-ge v15, v0, :cond_11

    move v9, v15

    :goto_9
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ge v9, v0, :cond_11

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_14
    if-nez v12, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_16

    const/16 v21, 0x4

    aget v21, v11, v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v12

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_15
    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v0, v4, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_15

    iget-object v0, v4, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    move-object/from16 v21, v0

    iget-object v0, v4, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    goto :goto_b

    :cond_16
    const-wide/16 v22, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    goto :goto_a

    :cond_17
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_7

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    move/from16 v21, v0

    if-eqz v21, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    :cond_19
    sget-object v21, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    return v20
.end method


# virtual methods
.method public getAltitude(D)D
    .locals 9

    const/4 v4, 0x1

    const/4 v3, -0x1

    const-string/jumbo v5, "GPSAltitude"

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v5, v6, v7}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    const-string/jumbo v5, "GPSAltitudeRef"

    invoke-virtual {p0, v5, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    const-wide/16 v6, 0x0

    cmpl-double v5, v0, v6

    if-ltz v5, :cond_1

    if-ltz v2, :cond_1

    if-ne v2, v4, :cond_0

    :goto_0
    int-to-double v4, v3

    mul-double/2addr v4, v0

    return-wide v4

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v5, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v3, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    const-string/jumbo v3, "GPSTimeStamp"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v1, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    iget v3, v1, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    return-object v6

    :cond_1
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->-wrap0(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/ExifInterface$Rational;

    array-length v3, v0

    if-eq v3, v5, :cond_2

    return-object v6

    :cond_2
    const-string/jumbo v3, "%02d:%02d:%02d"

    new-array v4, v5, [Ljava/lang/Object;

    aget-object v5, v0, v8

    iget-wide v6, v5, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v6

    aget-object v6, v0, v8

    iget-wide v6, v6, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aget-object v5, v0, v9

    iget-wide v6, v5, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v6

    aget-object v6, v0, v9

    iget-wide v6, v6, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    aget-object v5, v0, v10

    iget-wide v6, v5, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v6

    aget-object v6, v0, v10

    iget-wide v6, v6, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_3
    :try_start_0
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v2

    return-object v6

    :cond_4
    return-object v6
.end method

.method public getAttributeDouble(Ljava/lang/String;D)D
    .locals 4

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v1

    if-nez v1, :cond_0

    return-wide p2

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    return-wide p2
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .locals 3

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v1

    if-nez v1, :cond_0

    return p2

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    return p2
.end method

.method public getDateTime()J
    .locals 14

    const-wide/16 v12, -0x1

    const-string/jumbo v10, "DateTime"

    invoke-virtual {p0, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v10, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_1

    :cond_0
    return-wide v12

    :cond_1
    new-instance v6, Ljava/text/ParsePosition;

    const/4 v10, 0x0

    invoke-direct {v6, v10}, Ljava/text/ParsePosition;-><init>(I)V

    :try_start_0
    sget-object v10, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v10, v0, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_2

    return-wide v12

    :cond_2
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-string/jumbo v10, "SubSecTime"

    invoke-virtual {p0, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    if-eqz v7, :cond_4

    :try_start_1
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    :goto_0
    const-wide/16 v10, 0x3e8

    cmp-long v10, v8, v10

    if-lez v10, :cond_3

    const-wide/16 v10, 0xa

    div-long/2addr v8, v10
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    add-long/2addr v4, v8

    :cond_4
    :goto_1
    return-wide v4

    :catch_0
    move-exception v2

    return-wide v12

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public getGpsDateTime()J
    .locals 10

    const-wide/16 v8, -0x1

    const-string/jumbo v6, "GPSDateStamp"

    invoke-virtual {p0, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "GPSTimeStamp"

    invoke-virtual {p0, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_0

    if-nez v5, :cond_1

    :cond_0
    return-wide v8

    :cond_1
    sget-object v6, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/text/ParsePosition;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Ljava/text/ParsePosition;-><init>(I)V

    :try_start_0
    sget-object v6, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_3

    return-wide v8

    :cond_3
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    return-wide v6

    :catch_0
    move-exception v3

    return-wide v8
.end method

.method public getLatLong([F)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v5, "GPSLatitude"

    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "GPSLatitudeRef"

    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "GPSLongitude"

    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "GPSLongitudeRef"

    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    :try_start_0
    invoke-static {v2, v1}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    const/4 v6, 0x0

    aput v5, p1, v6

    invoke-static {v4, v3}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    const/4 v6, 0x1

    aput v5, p1, v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v8

    :catch_0
    move-exception v0

    :cond_0
    return v7
.end method

.method public getThumbnail()[B
    .locals 2

    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 12

    const/4 v11, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-boolean v7, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-nez v7, :cond_0

    return-object v10

    :cond_0
    iget-object v7, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    if-nez v7, :cond_1

    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v7

    iput-object v7, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    :cond_1
    iget v7, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v8, 0x6

    if-eq v7, v8, :cond_2

    iget v7, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v8, 0x7

    if-ne v7, v8, :cond_3

    :cond_2
    iget-object v7, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    iget v8, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    invoke-static {v7, v9, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    return-object v7

    :cond_3
    iget v7, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    iget-object v7, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    array-length v7, v7

    div-int/lit8 v7, v7, 0x3

    new-array v6, v7, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v7, v6

    if-ge v1, v7, :cond_4

    iget-object v7, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    mul-int/lit8 v8, v1, 0x3

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x10

    add-int/lit8 v7, v7, 0x0

    iget-object v8, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    mul-int/lit8 v9, v1, 0x3

    add-int/lit8 v9, v9, 0x1

    aget-byte v8, v8, v9

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    mul-int/lit8 v9, v1, 0x3

    add-int/lit8 v9, v9, 0x2

    aget-byte v8, v8, v9

    add-int/2addr v7, v8

    aput v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v11

    const-string/jumbo v8, "ImageLength"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v11

    const-string/jumbo v8, "ImageWidth"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v3, :cond_5

    if-eqz v5, :cond_5

    iget-object v7, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v7}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    iget-object v7, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v7}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v4

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v4, v2, v7}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    return-object v7

    :cond_5
    return-object v10
.end method

.method public getThumbnailBytes()[B
    .locals 11

    const/4 v10, 0x0

    iget-boolean v5, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-nez v5, :cond_0

    return-object v10

    :cond_0
    iget-object v5, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    return-object v5

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v5, :cond_4

    iget-object v3, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->markSupported()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    :cond_2
    :goto_0
    if-nez v3, :cond_6

    new-instance v5, Ljava/io/FileNotFoundException;

    invoke-direct {v5}, Ljava/io/FileNotFoundException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v5, "ExifInterface"

    const-string/jumbo v6, "Encountered exception while getting thumbnail"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v10

    :cond_3
    :try_start_2
    const-string/jumbo v5, "ExifInterface"

    const-string/jumbo v6, "Cannot read thumbnail from inputstream without mark/reset support"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v10

    :cond_4
    :try_start_3
    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v5, :cond_5

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_0

    :cond_5
    iget-object v5, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v5}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v2

    const-wide/16 v6, 0x0

    sget v5, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v2, v6, v7, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v3, v4

    goto :goto_0

    :cond_6
    iget v5, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v6

    iget v5, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-eqz v5, :cond_7

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Corrupted image"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v5

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    :cond_7
    :try_start_4
    iget v5, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    new-array v0, v5, [B

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    iget v6, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    if-eq v5, v6, :cond_8

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Corrupted image"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_8
    iput-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v0
.end method

.method public getThumbnailRange()[J
    .locals 4

    iget-boolean v1, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [J

    iget v1, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v2, v1

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    iget v1, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    int-to-long v2, v1

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public hasThumbnail()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    return v0
.end method

.method public isThumbnailCompressed()Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method public saveAttributes()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x0

    iget-boolean v8, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z

    if-eqz v8, :cond_0

    iget v8, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_1

    :cond_0
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "ExifInterface only supports saving attributes on JPEG formats."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    iget-boolean v8, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v8, :cond_3

    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v8, :cond_3

    :cond_2
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "ExifInterface does not support saving attributes for the current input."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v8

    iput-object v8, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v8, :cond_4

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_8

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Could\'nt rename to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :catch_0
    move-exception v0

    move-object v6, v7

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v8

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v8

    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v8

    :cond_4
    :try_start_3
    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v8, :cond_5

    const-string/jumbo v8, "temp"

    const-string/jumbo v9, "jpg"

    invoke-static {v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    const-wide/16 v10, 0x0

    sget v9, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v8, v10, v11, v9}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v2, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    invoke-static {v2, v5}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object v4, v5

    move-object v1, v2

    :cond_5
    :goto_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_6
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v8, :cond_7

    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :cond_6
    :goto_3
    invoke-direct {p0, v2, v4}, Landroid/media/ExifInterface;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    iput-object v12, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    return-void

    :cond_7
    :try_start_8
    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    const-wide/16 v10, 0x0

    sget v9, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v8, v10, v11, v9}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v4, v5

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_4
    :try_start_9
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v8

    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v8

    :goto_5
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    throw v8

    :catchall_2
    move-exception v8

    move-object v1, v2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catchall_3
    move-exception v8

    move-object v6, v7

    goto/16 :goto_1

    :catchall_4
    move-exception v8

    move-object v1, v2

    goto/16 :goto_1

    :catchall_5
    move-exception v8

    move-object v4, v5

    move-object v1, v2

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto/16 :goto_0

    :catch_4
    move-exception v0

    move-object v1, v2

    goto/16 :goto_0

    :catch_5
    move-exception v0

    move-object v4, v5

    move-object v1, v2

    goto/16 :goto_0

    :cond_8
    move-object v6, v7

    goto :goto_2
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 24

    if-eqz p2, :cond_1

    sget-object v3, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "GPSTimeStamp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroid/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "ExifInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid value for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/1,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/1,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    :goto_0
    const/4 v15, 0x0

    :goto_1
    sget-object v3, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v3, v3

    if-ge v15, v3, :cond_14

    const/4 v3, 0x4

    if-ne v15, v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    :cond_2
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v4, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v4, v10

    double-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/10000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception v12

    const-string/jumbo v3, "ExifInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid value for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    sget-object v3, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_2

    if-nez p2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    move-object/from16 v13, v21

    check-cast v13, Landroid/media/ExifInterface$ExifTag;

    invoke-static/range {p2 .. p2}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v14

    iget v4, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v4, v3, :cond_6

    iget v4, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v4, v3, :cond_7

    :cond_6
    iget v2, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    :goto_3
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v3, "ExifInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Data format isn\'t one of expected formats: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_7
    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_9

    iget v4, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v4, v3, :cond_8

    iget v4, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v4, v3, :cond_9

    :cond_8
    iget v2, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    goto :goto_3

    :cond_9
    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_a

    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_b

    :cond_a
    iget v2, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    goto :goto_3

    :cond_b
    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_a

    const-string/jumbo v4, "ExifInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Given tag ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ") value didn\'t match with one of expected "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "formats: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v6, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_c

    const-string/jumbo v3, ""

    :goto_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " (guess: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, v6, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_d

    const-string/jumbo v3, ""

    :goto_5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v7, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    aget-object v6, v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, v7, v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    invoke-static/range {p2 .. p2}, Landroid/media/ExifInterface$ExifAttribute;->createByte(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    invoke-static/range {p2 .. p2}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_3
    const-string/jumbo v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    :goto_6
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_e

    aget-object v3, v23, v17

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v16, v17

    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_4
    const-string/jumbo v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    :goto_7
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_f

    aget-object v3, v23, v17

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v16, v17

    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_5
    const-string/jumbo v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v3, v0

    new-array v0, v3, [J

    move-object/from16 v18, v0

    const/16 v17, 0x0

    :goto_8
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_10

    aget-object v3, v23, v17

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v18, v17

    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_6
    const-string/jumbo v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v3, v0

    new-array v0, v3, [Landroid/media/ExifInterface$Rational;

    move-object/from16 v22, v0

    const/16 v17, 0x0

    :goto_9
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_11

    aget-object v3, v23, v17

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    new-instance v3, Landroid/media/ExifInterface$Rational;

    const/4 v4, 0x0

    aget-object v4, v20, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-long v4, v4

    const/4 v6, 0x1

    aget-object v6, v20, v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-long v6, v6

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational;)V

    aput-object v3, v22, v17

    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_7
    const-string/jumbo v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v3, v0

    new-array v0, v3, [Landroid/media/ExifInterface$Rational;

    move-object/from16 v22, v0

    const/16 v17, 0x0

    :goto_a
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_12

    aget-object v3, v23, v17

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    new-instance v3, Landroid/media/ExifInterface$Rational;

    const/4 v4, 0x0

    aget-object v4, v20, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-long v4, v4

    const/4 v6, 0x1

    aget-object v6, v20, v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-long v6, v6

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational;)V

    aput-object v3, v22, v17

    add-int/lit8 v17, v17, 0x1

    goto :goto_a

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_8
    const-string/jumbo v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v3, v0

    new-array v9, v3, [D

    const/16 v17, 0x0

    :goto_b
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_13

    aget-object v3, v23, v17

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    aput-wide v4, v9, v17

    add-int/lit8 v17, v17, 0x1

    goto :goto_b

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v9, v4}, Landroid/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_14
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
