.class public Landroid/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private m3dvideotype:Ljava/lang/String;

.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mAudioCodecInfo:Ljava/lang/String;

.field private mBitDepth:I

.field private mCityID:J

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mCreationTime:J

.field private mDate:J

.field private final mDateFormatter:Ljava/text/SimpleDateFormat;

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I

.field private mFormat:I

.field private mGenre:Ljava/lang/String;

.field private mHDR10video:I

.field private mHeight:I

.field private mIs360video:I

.field private mIsDrm:Z

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mNoMedia:Z

.field private mPath:Ljava/lang/String;

.field private mRecordingMode:I

.field private mRecordingType:I

.field private mSamplingRate:I

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mVideoCodecInfo:Ljava/lang/String;

.field private mVideoLatitude:F

.field private mVideoLongitude:F

.field private mVoiceLatitude:F

.field private mVoiceLongitude:F

.field private mWeatherID:I

.field private mWidth:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method public constructor <init>(Landroid/media/MediaScanner;)V
    .locals 4

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v2, 0x0

    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFormat:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingMode:I

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWeatherID:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCityID:J

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLatitude:F

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLongitude:F

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mBitDepth:I

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mSamplingRate:I

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIs360video:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHDR10video:I

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDateFormatter:Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDateFormatter:Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method private convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const-string/jumbo v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' -> \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\', expected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v1, p2, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    .locals 68
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object/from16 v62, v0

    if-eqz v62, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Ljava/lang/String;->length()I

    move-result v62

    if-nez v62, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v60

    const-string/jumbo v62, "title"

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    if-eqz v58, :cond_2

    invoke-virtual/range {v58 .. v58}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v62 .. v62}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v62

    if-eqz v62, :cond_3

    :cond_2
    const-string/jumbo v62, "_data"

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v62 .. v62}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    const-string/jumbo v62, "title"

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v62, "album"

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v62, "<unknown>"

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v62

    if-eqz v62, :cond_5

    const-string/jumbo v62, "_data"

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v62, 0x2f

    move/from16 v0, v62

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v38

    if-ltz v38, :cond_5

    const/16 v49, 0x0

    :goto_0
    const/16 v62, 0x2f

    add-int/lit8 v63, v49, 0x1

    move/from16 v0, v62

    move/from16 v1, v63

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v34

    if-ltz v34, :cond_4

    move/from16 v0, v34

    move/from16 v1, v38

    if-lt v0, v1, :cond_a

    :cond_4
    if-eqz v49, :cond_5

    add-int/lit8 v62, v49, 0x1

    move/from16 v0, v62

    move/from16 v1, v38

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v62, "album"

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v52, v0

    const-wide/16 v8, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v62, v0

    invoke-static/range {v62 .. v62}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v62

    if-eqz v62, :cond_c

    const-wide/16 v62, 0x0

    cmp-long v62, v52, v62

    if-eqz v62, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Landroid/media/MediaScanner;->-get17(Landroid/media/MediaScanner;)I

    move-result v62

    if-eqz v62, :cond_c

    :cond_6
    const-string/jumbo v62, "is_ringtone"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v63

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v62, "is_notification"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v63

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v62, "is_alarm"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v63

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v62, "recordingtype"

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v50

    if-eqz v50, :cond_b

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Integer;->intValue()I

    move-result v62

    if-lez v62, :cond_b

    const-string/jumbo v62, "is_music"

    const/16 v63, 0x0

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    const-string/jumbo v62, "is_podcast"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v63

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_7
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    move/from16 v62, v0

    if-nez v62, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v62, v0

    const/16 v63, 0x1f

    move/from16 v0, v62

    move/from16 v1, v63

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v62, v0

    const/16 v63, 0x20

    move/from16 v0, v62

    move/from16 v1, v63

    if-ne v0, v1, :cond_17

    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Lcom/samsung/android/media/SemExtendedFormat;->isSEFFile(Ljava/lang/String;)Z

    move-result v62

    if-eqz v62, :cond_17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Lcom/samsung/android/media/SemExtendedFormat;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v6

    if-eqz v6, :cond_17

    const-string/jumbo v54, ""

    const/16 v29, 0x1

    array-length v0, v6

    move/from16 v62, v0

    add-int/lit8 v33, v62, -0x1

    :goto_3
    const/16 v62, -0x1

    move/from16 v0, v33

    move/from16 v1, v62

    if-le v0, v1, :cond_29

    aget v62, v6, v33
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v63, 0xa01

    move/from16 v0, v62

    move/from16 v1, v63

    if-ne v0, v1, :cond_24

    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v62, v0

    const-string/jumbo v63, "Image_UTC_Data"

    invoke-static/range {v62 .. v63}, Lcom/samsung/android/media/SemExtendedFormat;->getSEFData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v14

    if-eqz v14, :cond_9

    new-instance v59, Ljava/lang/String;

    move-object/from16 v0, v59

    invoke-direct {v0, v14}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v62, "datetaken"

    invoke-static/range {v59 .. v59}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v64

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_9
    :goto_4
    add-int/lit8 v33, v33, -0x1

    goto :goto_3

    :cond_a
    move/from16 v49, v34

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v62, "is_music"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v63

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v62, v0

    const/16 v63, 0x1f

    move/from16 v0, v62

    move/from16 v1, v63

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v62, v0

    invoke-static/range {v62 .. v62}, Landroid/media/MediaFile;->isRawImageFileType(I)Z

    move-result v62

    if-eqz v62, :cond_7

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    move/from16 v62, v0

    xor-int/lit8 v62, v62, 0x1

    if-eqz v62, :cond_7

    const/16 v61, -0x1

    const/16 v32, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/16 v22, 0x0

    :try_start_2
    new-instance v23, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v62, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v62

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v22, v23

    :goto_5
    if-eqz v22, :cond_10

    const/16 v62, 0x2

    move/from16 v0, v62

    new-array v0, v0, [F

    move-object/from16 v39, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v62

    if-eqz v62, :cond_e

    const-string/jumbo v62, "latitude"

    const/16 v63, 0x0

    aget v63, v39, v63

    invoke-static/range {v63 .. v63}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v63

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string/jumbo v62, "longitude"

    const/16 v63, 0x1

    aget v63, v39, v63

    invoke-static/range {v63 .. v63}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v63

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_e
    invoke-virtual/range {v22 .. v22}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v56

    const-wide/16 v62, -0x1

    cmp-long v62, v56, v62

    if-eqz v62, :cond_13

    const-string/jumbo v62, "datetaken"

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_f
    :goto_6
    const-string/jumbo v62, "ImageWidth"

    const/16 v63, -0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v61

    const-string/jumbo v62, "ImageLength"

    const/16 v63, -0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v32

    const-string/jumbo v62, "Orientation"

    const/16 v63, -0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v47

    const/16 v62, -0x1

    move/from16 v0, v47

    move/from16 v1, v62

    if-eq v0, v1, :cond_10

    packed-switch v47, :pswitch_data_0

    :pswitch_0
    const/16 v16, 0x0

    :goto_7
    const-string/jumbo v62, "orientation"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_10
    const/16 v62, -0x1

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_11

    const/16 v62, -0x1

    move/from16 v0, v32

    move/from16 v1, v62

    if-ne v0, v1, :cond_15

    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    move/from16 v62, v0

    if-lez v62, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    move/from16 v62, v0

    if-lez v62, :cond_12

    const-string/jumbo v62, "width"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    move/from16 v63, v0

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v62, "height"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    move/from16 v63, v0

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v62

    sub-long v24, v62, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalExifExtractingTime:J

    move-wide/from16 v64, v0

    add-long v64, v64, v24

    move-wide/from16 v0, v64

    move-object/from16 v2, v62

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalExifExtractingTime:J

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v62, v0

    const-string/jumbo v63, "."

    invoke-virtual/range {v62 .. v63}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v37

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    move-object/from16 v62, v0

    if-eqz v62, :cond_7

    if-lez v37, :cond_7

    const-wide/16 v62, 0x0

    cmp-long v62, v8, v62

    if-eqz v62, :cond_7

    const-wide/16 v62, 0x0

    cmp-long v62, v24, v62

    if-eqz v62, :cond_7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v62, v0

    add-int/lit8 v63, v37, 0x1

    invoke-virtual/range {v62 .. v63}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/media/MediaScanner$FileParsingTime;

    if-eqz v48, :cond_16

    move-object/from16 v0, v48

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner$FileParsingTime;->addParsingTime(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    move-object/from16 v1, v26

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :catch_0
    move-exception v21

    const-string/jumbo v62, "MediaScanner"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v64, "Exception in ExifInterface. path: "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Landroid/media/MediaScanner;->encodeStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, v62

    move-object/from16 v1, v63

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :cond_13
    invoke-virtual/range {v22 .. v22}, Landroid/media/ExifInterface;->getDateTime()J

    move-result-wide v56

    const-wide/16 v62, -0x1

    cmp-long v62, v56, v62

    if-nez v62, :cond_14

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getTimeFromFileName(Ljava/lang/String;)J

    move-result-wide v56

    :cond_14
    const-wide/16 v62, -0x1

    cmp-long v62, v56, v62

    if-eqz v62, :cond_f

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    move-wide/from16 v62, v0

    const-wide/16 v64, 0x3e8

    mul-long v62, v62, v64

    sub-long v62, v62, v56

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->abs(J)J

    move-result-wide v62

    const-wide/32 v64, 0x5265c00

    cmp-long v62, v62, v64

    if-ltz v62, :cond_f

    const-string/jumbo v62, "datetaken"

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_6

    :pswitch_1
    const/16 v16, 0x5a

    goto/16 :goto_7

    :pswitch_2
    const/16 v16, 0xb4

    goto/16 :goto_7

    :pswitch_3
    const/16 v16, 0x10e

    goto/16 :goto_7

    :cond_15
    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto/16 :goto_8

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    move-object/from16 v62, v0

    new-instance v63, Landroid/media/MediaScanner$FileParsingTime;

    move-object/from16 v0, v63

    move-object/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaScanner$FileParsingTime;-><init>(Ljava/lang/String;J)V

    move-object/from16 v0, v62

    move-object/from16 v1, v26

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :catch_1
    move-exception v20

    :try_start_3
    const-string/jumbo v62, "MediaScanner"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v64, " NumberFormatException in parseLong. path: "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Landroid/media/MediaScanner;->encodeStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, v62

    move-object/from16 v1, v63

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v19

    const-string/jumbo v62, "MediaScanner"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v64, "Exception while SEF parsing. path: "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Landroid/media/MediaScanner;->encodeStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, v62

    move-object/from16 v1, v63

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalSefExtractingTime:J

    move-wide/from16 v64, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v66

    sub-long v66, v66, v10

    add-long v64, v64, v66

    move-wide/from16 v0, v64

    move-object/from16 v2, v62

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalSefExtractingTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    move-object/from16 v35, v0

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    move/from16 v62, v0

    if-nez v62, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v62, v0

    invoke-static/range {v62 .. v62}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v62

    if-eqz v62, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Landroid/media/MediaScanner;->-get21(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v55

    :cond_18
    :goto_a
    const/16 v51, 0x0

    const/16 v41, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Landroid/media/MediaScanner;->-get16(Landroid/media/MediaScanner;)Z

    move-result v62

    if-eqz v62, :cond_1c

    if-eqz p3, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Landroid/media/MediaScanner;->-get9(Landroid/media/MediaScanner;)Z

    move-result v62

    if-nez v62, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Landroid/media/MediaScanner;->-get7(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v62 .. v62}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v62

    if-nez v62, :cond_19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Landroid/media/MediaScanner;->-get7(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v62

    if-eqz v62, :cond_1a

    :cond_19
    const/16 v41, 0x1

    const/16 v43, 0x1

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Landroid/media/MediaScanner;->-get20(Landroid/media/MediaScanner;)I

    move-result v62

    const/16 v63, 0x1

    move/from16 v0, v62

    move/from16 v1, v63

    if-le v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Landroid/media/MediaScanner;->-get10(Landroid/media/MediaScanner;)Z

    move-result v62

    xor-int/lit8 v62, v62, 0x1

    if-eqz v62, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Landroid/media/MediaScanner;->-get8(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v62 .. v62}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v62

    if-nez v62, :cond_1b

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Landroid/media/MediaScanner;->-get8(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v62

    if-eqz v62, :cond_1c

    :cond_1b
    const/16 v41, 0x1

    const/16 v44, 0x1

    :cond_1c
    :goto_b
    const-wide/16 v62, 0x0

    cmp-long v62, v52, v62

    if-nez v62, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Landroid/media/MediaScanner;->-get17(Landroid/media/MediaScanner;)I

    move-result v62

    if-eqz v62, :cond_1d

    const-string/jumbo v62, "media_scanner_new_object_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Landroid/media/MediaScanner;->-get17(Landroid/media/MediaScanner;)I

    move-result v63

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    move-object/from16 v62, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v62

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFormat:I

    move/from16 v30, v0

    if-nez v30, :cond_1e

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-static/range {v62 .. v63}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    :cond_1e
    const-string/jumbo v62, "format"

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1f
    const-string/jumbo v62, "storage_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/media/MediaScanner;->mStorageId:I

    move/from16 v63, v0

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    if-eqz v35, :cond_20

    if-eqz v41, :cond_35

    :cond_20
    if-eqz v35, :cond_21

    invoke-virtual/range {v35 .. v35}, Landroid/media/MediaInserter;->flushAll()V

    :cond_21
    new-instance v27, Landroid/os/Bundle;

    invoke-direct/range {v27 .. v27}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v62, "volume"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Landroid/media/MediaScanner;->mVolumeName:Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    move-object/from16 v62, v0

    const-string/jumbo v63, "sync_full"

    const/16 v64, 0x0

    move-object/from16 v0, v62

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    move-object/from16 v1, v55

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    move-object/from16 v62, v0

    const-string/jumbo v63, "sync_normal"

    const/16 v64, 0x0

    move-object/from16 v0, v62

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalInserted:J

    move-wide/from16 v64, v0

    const-wide/16 v66, 0x1

    add-long v64, v64, v66

    move-wide/from16 v0, v64

    move-object/from16 v2, v62

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalInserted:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    move-wide/from16 v64, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v66

    sub-long v66, v66, v12

    add-long v64, v64, v66

    move-wide/from16 v0, v64

    move-object/from16 v2, v62

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    if-eqz v51, :cond_22

    invoke-static/range {v51 .. v51}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v52

    move-wide/from16 v0, v52

    move-object/from16 v2, p1

    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    :cond_22
    :goto_d
    if-eqz v41, :cond_23

    if-eqz v43, :cond_3e

    const-string/jumbo v62, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move-object/from16 v2, v55

    move-wide/from16 v3, v52

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    const/16 v63, 0x1

    invoke-static/range {v62 .. v63}, Landroid/media/MediaScanner;->-set1(Landroid/media/MediaScanner;Z)Z

    :cond_23
    :goto_e
    return-object v51

    :catch_3
    move-exception v18

    :try_start_4
    const-string/jumbo v62, "MediaScanner"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v64, "IOException in getSEFData. path: "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Landroid/media/MediaScanner;->encodeStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, v62

    move-object/from16 v1, v63

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :cond_24
    aget v62, v6, v33

    const/16 v63, 0xa41

    move/from16 v0, v62

    move/from16 v1, v63

    if-eq v0, v1, :cond_9

    aget v62, v6, v33

    const/16 v63, 0x850

    move/from16 v0, v62

    move/from16 v1, v63

    if-eq v0, v1, :cond_9

    aget v62, v6, v33
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const/16 v63, 0x9e0

    move/from16 v0, v62

    move/from16 v1, v63

    if-ne v0, v1, :cond_25

    :try_start_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v62, v0

    const-string/jumbo v63, "Burst_Shot_Info"

    invoke-static/range {v62 .. v63}, Lcom/samsung/android/media/SemExtendedFormat;->getSEFData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v14

    if-eqz v14, :cond_25

    new-instance v31, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-direct {v0, v14}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v62, "group_id"

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v64

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_25
    :goto_f
    :try_start_6
    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v62

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string/jumbo v63, ","

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    aget v63, v6, v33

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    if-eqz v29, :cond_9

    aget v62, v6, v33

    const/16 v63, 0x800

    move/from16 v0, v62

    move/from16 v1, v63

    if-lt v0, v1, :cond_9

    aget v62, v6, v33

    rem-int/lit8 v62, v62, 0x10

    if-nez v62, :cond_9

    const-string/jumbo v62, "MediaScanner"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v64, "sef_file_type set to "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    aget v64, v6, v33

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v62, "sef_file_type"

    aget v63, v6, v33

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    array-length v0, v6

    move/from16 v62, v0

    const/16 v63, 0x2

    move/from16 v0, v62

    move/from16 v1, v63

    if-le v0, v1, :cond_28

    const/4 v15, 0x0

    const/16 v36, 0x0

    :goto_10
    array-length v0, v6

    move/from16 v62, v0

    move/from16 v0, v36

    move/from16 v1, v62

    if-ge v0, v1, :cond_27

    aget v62, v6, v36

    aget v63, v6, v33

    sub-int v17, v62, v63

    move/from16 v0, v33

    move/from16 v1, v36

    if-eq v0, v1, :cond_26

    const/16 v62, 0x10

    move/from16 v0, v17

    move/from16 v1, v62

    if-ge v0, v1, :cond_26

    if-lez v17, :cond_26

    add-int/lit8 v62, v17, -0x1

    const/16 v63, 0x1

    shl-int v62, v63, v62

    or-int v15, v15, v62

    :cond_26
    add-int/lit8 v36, v36, 0x1

    goto :goto_10

    :catch_4
    move-exception v20

    const-string/jumbo v62, "MediaScanner"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v64, " NumberFormatException in parseLong. path: "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Landroid/media/MediaScanner;->encodeStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, v62

    move-object/from16 v1, v63

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    :catch_5
    move-exception v18

    const-string/jumbo v62, "MediaScanner"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v64, "IOException in getSEFData. path: "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Landroid/media/MediaScanner;->encodeStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, v62

    move-object/from16 v1, v63

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    :cond_27
    const-string/jumbo v62, "sef_file_sub_type"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_28
    const/16 v29, 0x0

    goto/16 :goto_4

    :cond_29
    const-string/jumbo v62, ""

    move-object/from16 v0, v54

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v62

    if-nez v62, :cond_2a

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v62

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string/jumbo v63, ","

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    const-string/jumbo v62, "MediaScanner"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v64, "sef_file_types set to "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v62 .. v63}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const-string/jumbo v62, "sef_file_types"

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_9

    :cond_2b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v62, v0

    invoke-static/range {v62 .. v62}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v62

    if-eqz v62, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    move-object/from16 v55, v0

    goto/16 :goto_a

    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v62, v0

    invoke-static/range {v62 .. v62}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v62

    if-eqz v62, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Landroid/media/MediaScanner;->-get1(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v55

    goto/16 :goto_a

    :cond_2d
    if-eqz p2, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Landroid/media/MediaScanner;->-get13(Landroid/media/MediaScanner;)Z

    move-result v62

    if-nez v62, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Landroid/media/MediaScanner;->-get11(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v62 .. v62}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v62

    if-nez v62, :cond_2e

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Landroid/media/MediaScanner;->-get11(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v62

    if-eqz v62, :cond_2f

    :cond_2e
    const/16 v41, 0x1

    const/16 v45, 0x1

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Landroid/media/MediaScanner;->-get20(Landroid/media/MediaScanner;)I

    move-result v62

    const/16 v63, 0x1

    move/from16 v0, v62

    move/from16 v1, v63

    if-le v0, v1, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Landroid/media/MediaScanner;->-get14(Landroid/media/MediaScanner;)Z

    move-result v62

    xor-int/lit8 v62, v62, 0x1

    if-eqz v62, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Landroid/media/MediaScanner;->-get12(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v62 .. v62}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v62

    if-nez v62, :cond_30

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Landroid/media/MediaScanner;->-get12(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v62

    if-eqz v62, :cond_31

    :cond_30
    const/16 v41, 0x1

    const/16 v46, 0x1

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Landroid/media/MediaScanner;->-get6(Landroid/media/MediaScanner;)Z

    move-result v62

    if-nez v62, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Landroid/media/MediaScanner;->-get5(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v62 .. v62}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v62

    if-nez v62, :cond_32

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Landroid/media/MediaScanner;->-get5(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v62

    if-eqz v62, :cond_1c

    :cond_32
    const/16 v41, 0x1

    const/16 v42, 0x1

    goto/16 :goto_b

    :cond_33
    if-eqz p4, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Landroid/media/MediaScanner;->-get6(Landroid/media/MediaScanner;)Z

    move-result v62

    if-nez v62, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Landroid/media/MediaScanner;->-get5(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v62 .. v62}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v62

    if-nez v62, :cond_34

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Landroid/media/MediaScanner;->-get5(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v62

    if-eqz v62, :cond_1c

    :cond_34
    const/16 v41, 0x1

    const/16 v42, 0x1

    goto/16 :goto_b

    :cond_35
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFormat:I

    move/from16 v62, v0

    const/16 v63, 0x3001

    move/from16 v0, v62

    move/from16 v1, v63

    if-ne v0, v1, :cond_36

    move-object/from16 v0, v35

    move-object/from16 v1, v55

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaInserter;->insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_c

    :cond_36
    move-object/from16 v0, v35

    move-object/from16 v1, v55

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_c

    :cond_37
    move-object/from16 v0, v55

    move-wide/from16 v1, v52

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v51

    const-string/jumbo v62, "_data"

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const/16 v40, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v62

    if-nez v62, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    move-object/from16 v62, v0

    invoke-static/range {v62 .. v62}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v28

    invoke-static/range {v28 .. v28}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v62

    if-eqz v62, :cond_3a

    const/16 v40, 0x2

    :cond_38
    :goto_11
    const-string/jumbo v62, "media_type"

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalUpdated:J

    move-wide/from16 v64, v0

    const-wide/16 v66, 0x1

    add-long v64, v64, v66

    move-wide/from16 v0, v64

    move-object/from16 v2, v62

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalUpdated:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    move-object/from16 v62, v0

    const/16 v63, 0x0

    const/16 v64, 0x0

    move-object/from16 v0, v62

    move-object/from16 v1, v51

    move-object/from16 v2, v60

    move-object/from16 v3, v63

    move-object/from16 v4, v64

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_3a
    invoke-static/range {v28 .. v28}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v62

    if-eqz v62, :cond_3b

    const/16 v40, 0x3

    goto :goto_11

    :cond_3b
    invoke-static/range {v28 .. v28}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v62

    if-eqz v62, :cond_3c

    const/16 v40, 0x1

    goto :goto_11

    :cond_3c
    invoke-static/range {v28 .. v28}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v62

    if-eqz v62, :cond_3d

    const/16 v40, 0x4

    goto :goto_11

    :cond_3d
    invoke-static/range {v28 .. v28}, Landroid/media/MediaFile;->isDocFileType(I)Z

    move-result v62

    if-eqz v62, :cond_38

    const-string/jumbo v62, "is_doc"

    const/16 v63, 0x1

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_11

    :cond_3e
    if-eqz v44, :cond_3f

    const-string/jumbo v62, "notification_sound_2"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move-object/from16 v2, v55

    move-wide/from16 v3, v52

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    const/16 v63, 0x1

    invoke-static/range {v62 .. v63}, Landroid/media/MediaScanner;->-set2(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_e

    :cond_3f
    if-eqz v45, :cond_40

    const-string/jumbo v62, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move-object/from16 v2, v55

    move-wide/from16 v3, v52

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    const/16 v63, 0x1

    invoke-static/range {v62 .. v63}, Landroid/media/MediaScanner;->-set3(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_e

    :cond_40
    if-eqz v46, :cond_41

    const-string/jumbo v62, "ringtone_2"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move-object/from16 v2, v55

    move-wide/from16 v3, v52

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    const/16 v63, 0x1

    invoke-static/range {v62 .. v63}, Landroid/media/MediaScanner;->-set4(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_e

    :cond_41
    if-eqz v42, :cond_23

    const-string/jumbo v62, "alarm_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move-object/from16 v2, v55

    move-wide/from16 v3, v52

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v62, v0

    const/16 v63, 0x1

    invoke-static/range {v62 .. v63}, Landroid/media/MediaScanner;->-set0(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_e

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getFileTypeFromDrm(Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2}, Landroid/media/MediaScanner;->-wrap0(Landroid/media/MediaScanner;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2}, Landroid/media/MediaScanner;->-get15(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    new-instance v3, Landroid/drm/DrmManagerClient;

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get4(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Landroid/media/MediaScanner;->-set5(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;

    :cond_1
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2}, Landroid/media/MediaScanner;->-get15(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    invoke-virtual {v2, p1, v5}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2}, Landroid/media/MediaScanner;->-get15(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v1

    :cond_2
    return v1
.end method

.method private parseDate(Ljava/lang/String;)J
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 8

    const/16 v7, 0x39

    const/16 v6, 0x30

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne p2, v1, :cond_0

    return p3

    :cond_0
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v6, :cond_1

    if-le v0, v7, :cond_2

    :cond_1
    return p3

    :cond_2
    add-int/lit8 v2, v0, -0x30

    :goto_0
    if-ge v3, v1, :cond_5

    add-int/lit8 p2, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v6, :cond_3

    if-le v0, v7, :cond_4

    :cond_3
    return v2

    :cond_4
    mul-int/lit8 v4, v2, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v2, v4, v5

    move v3, p2

    goto :goto_0

    :cond_5
    return v2
.end method

.method private processImageFile(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->-get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->-get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->-get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->-get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->-get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 11

    :try_start_0
    iget-object v7, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v7, p1}, Landroid/media/MediaScanner;->-wrap2(Landroid/media/MediaScanner;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    return-void

    :cond_0
    iget-object v7, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v7}, Landroid/media/MediaScanner;->-get4(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    iget-object v7, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v7}, Landroid/media/MediaScanner;->-get4(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v8

    invoke-static {v7, v8, v5}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "volume"

    iget-object v8, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v8, v8, Landroid/media/MediaScanner;->mVolumeName:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "MediaScanner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v7, v7, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string/jumbo v8, "sync_full"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v7, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v7, v7, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string/jumbo v8, "mediadb_log"

    invoke-virtual {v7, v8, v4, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v7, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v7, v7, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string/jumbo v8, "sync_normal"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_1
    iget-object v7, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v7, p1}, Landroid/media/MediaScanner;->-wrap3(Landroid/media/MediaScanner;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v7, "MediaScanner"

    const-string/jumbo v8, "RemoteException in setRingtoneIfNotSet"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private testGenreNameConverter()V
    .locals 2

    const-string/jumbo v0, "2"

    const-string/jumbo v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "(2)"

    const-string/jumbo v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "(2"

    const-string/jumbo v1, "(2"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "2 Foo"

    const-string/jumbo v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "(2) Foo"

    const-string/jumbo v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "(2 Foo"

    const-string/jumbo v1, "(2 Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "2Foo"

    const-string/jumbo v1, "2Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "(2)Foo"

    const-string/jumbo v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "200 Foo"

    const-string/jumbo v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "(200) Foo"

    const-string/jumbo v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "200Foo"

    const-string/jumbo v1, "200Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "(200)Foo"

    const-string/jumbo v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "200)Foo"

    const-string/jumbo v1, "200)Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "200) Foo"

    const-string/jumbo v1, "200) Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 10

    const-wide/16 v8, -0x1

    const/high16 v6, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "_data"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "title"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "date_modified"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "_size"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "mime_type"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "is_drm"

    iget-boolean v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v1, 0x0

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    if-lez v2, :cond_0

    const-string/jumbo v2, "width"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "height"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v2, :cond_7

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v3, "artist"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "album"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "duration"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v1, :cond_1

    const-string/jumbo v2, "resolution"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v2, "weather_ID"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWeatherID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "city_ID"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCityID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_2

    const-string/jumbo v2, "latitude"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string/jumbo v2, "longitude"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_2
    const-string/jumbo v2, "is_360_video"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIs360video:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "recordingtype"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "recording_mode"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHDR10video:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const-string/jumbo v2, "is_hdr10_video"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHDR10video:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->m3dvideotype:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string/jumbo v2, "type3dvideo"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->m3dvideotype:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoCodecInfo:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string/jumbo v2, "video_codec_info"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoCodecInfo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAudioCodecInfo:Ljava/lang/String;

    if-eqz v2, :cond_6

    const-string/jumbo v2, "audio_codec_info"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAudioCodecInfo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_7

    const-string/jumbo v2, "datetaken"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_7
    :goto_2
    return-object v0

    :cond_8
    const-string/jumbo v2, "<unknown>"

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v2, "<unknown>"

    goto/16 :goto_1

    :cond_a
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v2

    if-nez v2, :cond_7

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v4, "artist"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "album_artist"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "album"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_5
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "composer"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "genre"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "year"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-nez v4, :cond_f

    :goto_6
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "track"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "duration"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "compilation"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "recordingtype"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "recording_mode"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "bit_depth"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mBitDepth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "sampling_rate"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mSamplingRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLatitude:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_b

    const-string/jumbo v2, "latitude"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLatitude:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string/jumbo v2, "longitude"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLongitude:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_b
    iget-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_7

    const-string/jumbo v2, "datetaken"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_2

    :cond_c
    const-string/jumbo v2, "<unknown>"

    goto/16 :goto_3

    :cond_d
    move-object v2, v3

    goto/16 :goto_4

    :cond_e
    const-string/jumbo v2, "<unknown>"

    goto/16 :goto_5

    :cond_f
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_6
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;
    .locals 15

    move-object/from16 v0, p2

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move-wide/from16 v0, p5

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    if-nez p7, :cond_3

    if-nez p8, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->-wrap1(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 p8, 0x1

    :cond_0
    move/from16 v0, p8

    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-eqz p2, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    :cond_1
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-nez v3, :cond_2

    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v13

    if-eqz v13, :cond_2

    iget v3, v13, Landroid/media/MediaFile$MediaFileType;->fileType:I

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, v13, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    :cond_2
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v3}, Landroid/media/MediaScanner;->-wrap0(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v2, 0x0

    move-object/from16 v12, p1

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v3}, Landroid/media/MediaScanner;->-get3(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    :cond_4
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v3, v3, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaScanner$FileEntry;

    if-nez v2, :cond_5

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-boolean v3, v3, Landroid/media/MediaScanner;->mIsFileCacheFull:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v2

    :cond_5
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-wide v4, v3, Landroid/media/MediaScanner;->mTotalMakeEntryTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/media/MediaScanner;->mTotalMakeEntryTime:J

    if-eqz v2, :cond_9

    iget-wide v4, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    sub-long v10, p3, v4

    :goto_0
    const-wide/16 v4, 0x1

    cmp-long v3, v10, v4

    if-gtz v3, :cond_6

    const-wide/16 v4, -0x1

    cmp-long v3, v10, v4

    if-gez v3, :cond_a

    :cond_6
    const/4 v14, 0x1

    :goto_1
    if-eqz v2, :cond_7

    if-eqz v14, :cond_8

    :cond_7
    if-eqz v14, :cond_b

    move-wide/from16 v0, p3

    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    :goto_2
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    :cond_8
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v3}, Landroid/media/MediaScanner;->-get19(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v3, v3, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    return-object v3

    :cond_9
    const-wide/16 v10, 0x0

    goto :goto_0

    :cond_a
    const/4 v14, 0x0

    goto :goto_1

    :cond_b
    new-instance v2, Landroid/media/MediaScanner$FileEntry;

    const-wide/16 v3, 0x0

    move-object/from16 v5, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;J)V

    if-eqz p7, :cond_c

    const/16 v3, 0x3001

    :goto_3
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFormat:I

    goto :goto_2

    :cond_c
    const/4 v3, 0x0

    goto :goto_3

    :cond_d
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    move-object/from16 v0, p1

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDate:J

    move-wide/from16 v0, p3

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLatitude:F

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLongitude:F

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mSamplingRate:I

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mBitDepth:I

    const/4 v3, -0x1

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingMode:I

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWeatherID:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCityID:J

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIs360video:I

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->m3dvideotype:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoCodecInfo:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAudioCodecInfo:Ljava/lang/String;

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHDR10video:I

    return-object v2
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    .locals 31

    const/16 v30, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move/from16 v12, p7

    move/from16 v13, p9

    :try_start_0
    invoke-virtual/range {v5 .. v13}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v4, 0x0

    return-object v4

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get17(Landroid/media/MediaScanner;)I

    move-result v4

    if-eqz v4, :cond_1

    const-wide/16 v12, 0x0

    iput-wide v12, v5, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get16(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get9(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->-get7(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get13(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->-get11(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get6(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->-get5(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get20(Landroid/media/MediaScanner;)I

    move-result v4

    const/4 v11, 0x1

    if-le v4, v11, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get10(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->-get8(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get14(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->-get12(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    const-string/jumbo v4, "MediaScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "forcing rescan of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " since ringtone setting didn\'t finish"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p8, 0x1

    :cond_7
    if-eqz v5, :cond_9

    iget-boolean v4, v5, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-nez v4, :cond_8

    if-eqz p8, :cond_9

    :cond_8
    if-eqz p9, :cond_11

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_10

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v4, "/ringtones/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_a

    const/4 v6, 0x1

    :goto_0
    const-string/jumbo v4, "/notifications/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_b

    const/4 v7, 0x1

    :goto_1
    const-string/jumbo v4, "/alarms/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_c

    const/4 v8, 0x1

    :goto_2
    const-string/jumbo v4, "/podcasts/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_d

    const/4 v10, 0x1

    :goto_3
    const-string/jumbo v4, "/music/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_e

    if-nez v6, :cond_f

    xor-int/lit8 v4, v7, 0x1

    if-eqz v4, :cond_f

    xor-int/lit8 v4, v8, 0x1

    if-eqz v4, :cond_f

    xor-int/lit8 v9, v10, 0x1

    :goto_4
    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v30

    :cond_9
    :goto_5
    return-object v30

    :cond_a
    const/4 v6, 0x0

    goto :goto_0

    :cond_b
    const/4 v7, 0x0

    goto :goto_1

    :cond_c
    const/4 v8, 0x0

    goto :goto_2

    :cond_d
    const/4 v10, 0x0

    goto :goto_3

    :cond_e
    const/4 v9, 0x1

    goto :goto_4

    :cond_f
    const/4 v9, 0x0

    goto :goto_4

    :cond_10
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move-object v12, v5

    invoke-direct/range {v11 .. v17}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v30

    goto :goto_5

    :cond_11
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v4, "/ringtones/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_16

    const/4 v6, 0x1

    :goto_6
    const-string/jumbo v4, "/notifications/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_17

    const/4 v7, 0x1

    :goto_7
    const-string/jumbo v4, "/alarms/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_18

    const/4 v8, 0x1

    :goto_8
    const-string/jumbo v4, "/podcasts/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_19

    const/4 v10, 0x1

    :goto_9
    const-string/jumbo v4, "/music/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_1a

    if-nez v6, :cond_1b

    xor-int/lit8 v4, v7, 0x1

    if-eqz v4, :cond_1b

    xor-int/lit8 v4, v8, 0x1

    if-eqz v4, :cond_1b

    xor-int/lit8 v9, v10, 0x1

    :goto_a
    const-wide/16 v18, 0x0

    const-wide/16 v28, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v22

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v24

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v23

    if-nez v22, :cond_12

    if-eqz v24, :cond_13

    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-static {v4, v0, v1, v2}, Landroid/media/MediaScanner;->-wrap5(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v28, v12, v18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-wide v12, v4, Landroid/media/MediaScanner;->mTotalParsingTime:J

    add-long v12, v12, v28

    iput-wide v12, v4, Landroid/media/MediaScanner;->mTotalParsingTime:J

    :cond_13
    if-eqz v23, :cond_14

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v11, 0x1f

    if-eq v4, v11, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v28, v12, v18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-wide v12, v4, Landroid/media/MediaScanner;->mTotalBitmapDecodingTime:J

    add-long v12, v12, v28

    iput-wide v12, v4, Landroid/media/MediaScanner;->mTotalBitmapDecodingTime:J

    :cond_14
    const-string/jumbo v4, "."

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v4, v4, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    if-eqz v4, :cond_15

    if-lez v25, :cond_15

    const-wide/16 v12, 0x0

    cmp-long v4, v18, v12

    if-eqz v4, :cond_15

    const-wide/16 v12, 0x0

    cmp-long v4, v28, v12

    if-eqz v4, :cond_15

    add-int/lit8 v4, v25, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v4, v4, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/media/MediaScanner$FileParsingTime;

    if-eqz v27, :cond_1c

    invoke-virtual/range {v27 .. v29}, Landroid/media/MediaScanner$FileParsingTime;->addParsingTime(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v4, v4, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    :goto_b
    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v30

    goto/16 :goto_5

    :cond_16
    const/4 v6, 0x0

    goto/16 :goto_6

    :cond_17
    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_18
    const/4 v8, 0x0

    goto/16 :goto_8

    :cond_19
    const/4 v10, 0x0

    goto/16 :goto_9

    :cond_1a
    const/4 v9, 0x1

    goto/16 :goto_a

    :cond_1b
    const/4 v9, 0x0

    goto/16 :goto_a

    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v4, v4, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    new-instance v11, Landroid/media/MediaScanner$FileParsingTime;

    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    invoke-direct {v11, v0, v1, v2}, Landroid/media/MediaScanner$FileParsingTime;-><init>(Ljava/lang/String;J)V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v20

    const-string/jumbo v4, "MediaScanner"

    const-string/jumbo v11, "RemoteException in MediaScanner.scanFile()"

    move-object/from16 v0, v20

    invoke-static {v4, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5
.end method

.method public getGenreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const/16 v12, 0xff

    const/16 v11, 0x29

    const/4 v10, 0x0

    if-nez p1, :cond_0

    return-object v10

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    const/4 v7, 0x0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-nez v4, :cond_1

    const/16 v9, 0x28

    if-ne v0, v9, :cond_1

    const/4 v7, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    if-ge v4, v5, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_2
    if-eqz v7, :cond_5

    if-ne v1, v11, :cond_5

    :cond_3
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    if-ltz v3, :cond_6

    invoke-static {}, Landroid/media/MediaScanner;->-get0()[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-ge v3, v9, :cond_7

    invoke-static {}, Landroid/media/MediaScanner;->-get0()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v3

    if-eqz v9, :cond_7

    invoke-static {}, Landroid/media/MediaScanner;->-get0()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    :cond_4
    const/16 v1, 0x20

    goto :goto_2

    :cond_5
    if-nez v7, :cond_6

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_3

    :cond_6
    :goto_3
    return-object p1

    :cond_7
    if-ne v3, v12, :cond_8

    return-object v10

    :cond_8
    if-ge v3, v12, :cond_a

    add-int/lit8 v9, v4, 0x1

    if-ge v9, v5, :cond_a

    if-eqz v7, :cond_9

    if-ne v1, v11, :cond_9

    add-int/lit8 v4, v4, 0x1

    :cond_9
    :try_start_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_6

    return-object v8

    :cond_a
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    return-object v9

    :catch_0
    move-exception v2

    goto :goto_3
.end method

.method public getTimeFromFileName(Ljava/lang/String;)J
    .locals 14

    const/16 v13, 0xf

    const/4 v12, 0x0

    const-string/jumbo v10, "/"

    invoke-virtual {p1, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, -0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x13

    if-lt v10, v11, :cond_1

    const/4 v10, 0x0

    const/16 v11, 0x8

    :try_start_0
    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    move-object v5, v3

    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v10, v13, :cond_0

    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_0
    :try_start_1
    const-string/jumbo v10, "yyyyMMdd_HHmmss"

    invoke-static {v10}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v4

    const-string/jumbo v10, "UTC"

    invoke-static {v10}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/Instant;->toEpochMilli()J
    :try_end_1
    .catch Ljava/time/format/DateTimeParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v6

    :goto_1
    return-wide v6

    :catch_0
    move-exception v1

    const/16 v10, 0x5f

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v10, "MediaScanner"

    const-string/jumbo v11, "Wrong DateTime Format or Value!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string/jumbo v10, "MediaScanner"

    const-string/jumbo v11, "Can\'t find File Name!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const-string/jumbo v10, "title"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "title;"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v10, "artist"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string/jumbo v10, "artist;"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string/jumbo v10, "albumartist"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string/jumbo v10, "albumartist;"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string/jumbo v10, "band"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string/jumbo v10, "band;"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string/jumbo v10, "album"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string/jumbo v10, "album;"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const-string/jumbo v10, "composer"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string/jumbo v10, "composer;"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_0

    :cond_a
    iget-object v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->-get18(Landroid/media/MediaScanner;)Z

    move-result v10

    if-eqz v10, :cond_c

    const-string/jumbo v10, "genre"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string/jumbo v10, "genre;"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_b
    invoke-virtual {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v10, "year"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string/jumbo v10, "year;"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    :cond_d
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, p2, v10, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v10

    iput v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v10, "tracknumber"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_f

    const-string/jumbo v10, "tracknumber;"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    :cond_f
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, p2, v10, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v8

    iget v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v10, v10, 0x3e8

    mul-int/lit16 v10, v10, 0x3e8

    add-int/2addr v10, v8

    iput v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v10, "discnumber"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_11

    const-string/jumbo v10, "set"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    const-string/jumbo v10, "set;"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    :cond_11
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, p2, v10, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v8

    mul-int/lit16 v10, v8, 0x3e8

    iget v11, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v11, v11, 0x3e8

    add-int/2addr v10, v11

    iput v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v10, "duration"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, p2, v10, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v10

    iput v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v10, "writer"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_14

    const-string/jumbo v10, "writer;"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15

    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v10, "compilation"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_16

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, p2, v10, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v10

    iput v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v10, "isdrm"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, p2, v10, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_17

    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    goto/16 :goto_0

    :cond_17
    const/4 v10, 0x0

    goto :goto_1

    :cond_18
    const-string/jumbo v10, "date"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-direct {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDate:J

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v10, "width"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1a

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, p2, v10, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v10

    iput v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v10, "height"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, p2, v10, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v10

    iput v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto/16 :goto_0

    :cond_1b
    const-string/jumbo v10, "recordingtype"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    goto/16 :goto_0

    :cond_1c
    const-string/jumbo v10, "recordingmode"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingMode:I

    goto/16 :goto_0

    :cond_1d
    const-string/jumbo v10, "weather"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWeatherID:I

    goto/16 :goto_0

    :cond_1e
    const-string/jumbo v10, "cityid"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1f

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCityID:J

    goto/16 :goto_0

    :cond_1f
    const-string/jumbo v10, "location"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_21

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x2b

    invoke-virtual {p2, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/16 v10, 0x2d

    invoke-virtual {p2, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v10, 0x0

    invoke-virtual {p2, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2b

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/16 v10, 0x2d

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-nez v0, :cond_20

    const/4 v10, 0x0

    invoke-virtual {p2, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    iget v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    iput v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLatitude:F

    iget v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    iput v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLongitude:F

    goto/16 :goto_0

    :cond_20
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_21
    const-string/jumbo v10, "samplingrate"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mSamplingRate:I

    goto/16 :goto_0

    :cond_22
    const-string/jumbo v10, "bitspersample"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_23

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mBitDepth:I

    goto/16 :goto_0

    :cond_23
    const-string/jumbo v10, "is360video"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_24

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIs360video:I

    goto/16 :goto_0

    :cond_24
    const-string/jumbo v10, "3dvideotype"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_25

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->m3dvideotype:Ljava/lang/String;

    goto/16 :goto_0

    :cond_25
    const-string/jumbo v10, "videocodecinfo"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_26

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoCodecInfo:Ljava/lang/String;

    goto/16 :goto_0

    :cond_26
    const-string/jumbo v10, "audiocodecinfo"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_27

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAudioCodecInfo:Ljava/lang/String;

    goto/16 :goto_0

    :cond_27
    const-string/jumbo v10, "creationtime"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_28

    if-eqz p2, :cond_1

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    goto/16 :goto_0

    :cond_28
    const-string/jumbo v10, "isHDR10video"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string/jumbo v10, "yes"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    iput v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHDR10video:I

    goto/16 :goto_0
.end method

.method public isNoMediaPath(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .locals 12

    if-eqz p6, :cond_0

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-wide v2, v0, Landroid/media/MediaScanner;->mTotalCheckedDirectories:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/media/MediaScanner;->mTotalCheckedDirectories:J

    :goto_0
    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-wide v2, v0, Landroid/media/MediaScanner;->mTotalCheckedFiles:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/media/MediaScanner;->mTotalCheckedFiles:J

    goto :goto_0
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "audio/mp4"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    return-void
.end method
