.class Landroid/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I

.field private mFormat:I

.field private mGenre:Ljava/lang/String;

.field private mHeight:I

.field private mIs360video:I

.field private mIsDrm:Z

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mNoMedia:Z

.field private mPath:Ljava/lang/String;

.field private mPrivateStorage:I

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
.method private constructor <init>(Landroid/media/MediaScanner;)V
    .locals 4
    .param p1, "this$0"    # Landroid/media/MediaScanner;

    .prologue
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v2, 0x0

    .line 567
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFormat:I

    .line 591
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    .line 592
    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingMode:I

    .line 593
    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWeatherID:I

    .line 594
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCityID:J

    .line 595
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    .line 596
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    .line 597
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLatitude:F

    .line 598
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLongitude:F

    .line 599
    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mBitDepth:I

    .line 600
    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mSamplingRate:I

    .line 601
    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIs360video:I

    .line 602
    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPrivateStorage:I

    .line 606
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    .line 567
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$MyMediaScannerClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaScanner;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;)V

    return-void
.end method

.method private convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "expected"    # Ljava/lang/String;

    .prologue
    .line 913
    invoke-virtual {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 914
    .local v0, "output":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 915
    const/4 v1, 0x1

    return v1

    .line 917
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

    .line 918
    const/4 v1, 0x0

    return v1
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1459
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 1460
    .local v1, "pathFilenameStart":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1461
    .local v0, "filenameLength":I
    invoke-virtual {p1, v1, p2, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1462
    add-int v3, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 1461
    :cond_0
    return v2
.end method

.method private endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    .locals 64
    .param p1, "entry"    # Landroid/media/MediaScanner$FileEntry;
    .param p2, "ringtones"    # Z
    .param p3, "notifications"    # Z
    .param p4, "alarms"    # Z
    .param p5, "music"    # Z
    .param p6, "podcasts"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object/from16 v59, v0

    if-eqz v59, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v59 .. v59}, Ljava/lang/String;->length()I

    move-result v59

    if-nez v59, :cond_1

    .line 1099
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 1102
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v57

    .line 1103
    .local v57, "values":Landroid/content/ContentValues;
    const-string/jumbo v59, "title"

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 1104
    .local v53, "title":Ljava/lang/String;
    if-eqz v53, :cond_2

    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v59 .. v59}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-eqz v59, :cond_3

    .line 1105
    :cond_2
    const-string/jumbo v59, "_data"

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v59 .. v59}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 1106
    const-string/jumbo v59, "title"

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    :cond_3
    const-string/jumbo v59, "album"

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1109
    .local v7, "album":Ljava/lang/String;
    const-string/jumbo v59, "<unknown>"

    move-object/from16 v0, v59

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_5

    .line 1110
    const-string/jumbo v59, "_data"

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1112
    const/16 v59, 0x2f

    move/from16 v0, v59

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v35

    .line 1113
    .local v35, "lastSlash":I
    if-ltz v35, :cond_5

    .line 1114
    const/16 v46, 0x0

    .line 1116
    .local v46, "previousSlash":I
    :goto_0
    const/16 v59, 0x2f

    add-int/lit8 v60, v46, 0x1

    move/from16 v0, v59

    move/from16 v1, v60

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v31

    .line 1117
    .local v31, "idx":I
    if-ltz v31, :cond_4

    move/from16 v0, v31

    move/from16 v1, v35

    if-lt v0, v1, :cond_a

    .line 1122
    :cond_4
    if-eqz v46, :cond_5

    .line 1123
    add-int/lit8 v59, v46, 0x1

    move/from16 v0, v59

    move/from16 v1, v35

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1124
    const-string/jumbo v59, "album"

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    .end local v31    # "idx":I
    .end local v35    # "lastSlash":I
    .end local v46    # "previousSlash":I
    :cond_5
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v50, v0

    .line 1129
    .local v50, "rowId":J
    const-wide/16 v8, 0x0

    .line 1130
    .local v8, "beforeExifExtractingTime":J
    const-wide/16 v22, 0x0

    .line 1131
    .local v22, "exifExtractingTime":J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v59

    if-eqz v59, :cond_c

    const-wide/16 v60, 0x0

    cmp-long v59, v50, v60

    if-eqz v59, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get22(Landroid/media/MediaScanner;)I

    move-result v59

    if-eqz v59, :cond_c

    .line 1136
    :cond_6
    const-string/jumbo v59, "is_ringtone"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1137
    const-string/jumbo v59, "is_notification"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1138
    const-string/jumbo v59, "is_alarm"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1140
    const-string/jumbo v59, "recordingtype"

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v47

    .line 1141
    .local v47, "recordingtype":Ljava/lang/Integer;
    if-eqz v47, :cond_b

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v59

    if-lez v59, :cond_b

    .line 1142
    const-string/jumbo v59, "is_music"

    const/16 v60, 0x0

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1147
    :goto_1
    const-string/jumbo v59, "is_podcast"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1232
    .end local v47    # "recordingtype":Ljava/lang/Integer;
    :cond_7
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1233
    .local v10, "beforeSEFExtractingTime":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    move/from16 v59, v0

    if-nez v59, :cond_1d

    .line 1234
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v59, v0

    const/16 v60, 0x1f

    move/from16 v0, v59

    move/from16 v1, v60

    if-eq v0, v1, :cond_8

    .line 1235
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v59, v0

    const/16 v60, 0x20

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_1d

    .line 1236
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/samsung/android/media/SemExtendedFormat;->isSEFFile(Ljava/lang/String;)Z

    move-result v59

    .line 1233
    if-eqz v59, :cond_1d

    .line 1237
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/samsung/android/media/SemExtendedFormat;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v6

    .line 1238
    .local v6, "SEFDataTypes":[I
    if-eqz v6, :cond_1d

    .line 1239
    const-string/jumbo v49, ""

    .line 1240
    .local v49, "sefFileTypes":Ljava/lang/String;
    const/16 v26, 0x1

    .line 1241
    .local v26, "flag":Z
    array-length v0, v6

    move/from16 v59, v0

    add-int/lit8 v30, v59, -0x1

    .local v30, "i":I
    :goto_3
    const/16 v59, -0x1

    move/from16 v0, v30

    move/from16 v1, v59

    if-le v0, v1, :cond_1b

    .line 1242
    aget v59, v6, v30

    const/16 v60, 0xa01

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_16

    .line 1244
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    .line 1245
    const-string/jumbo v60, "Image_UTC_Data"

    .line 1244
    invoke-static/range {v59 .. v60}, Lcom/samsung/android/media/SemExtendedFormat;->getSEFData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v14

    .line 1246
    .local v14, "data":[B
    if-eqz v14, :cond_9

    .line 1247
    new-instance v56, Ljava/lang/String;

    move-object/from16 v0, v56

    invoke-direct {v0, v14}, Ljava/lang/String;-><init>([B)V

    .line 1248
    .local v56, "utc":Ljava/lang/String;
    const-string/jumbo v59, "datetaken"

    invoke-static/range {v56 .. v56}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v60

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1241
    .end local v14    # "data":[B
    .end local v56    # "utc":Ljava/lang/String;
    :cond_9
    :goto_4
    add-int/lit8 v30, v30, -0x1

    goto :goto_3

    .line 1120
    .end local v6    # "SEFDataTypes":[I
    .end local v8    # "beforeExifExtractingTime":J
    .end local v10    # "beforeSEFExtractingTime":J
    .end local v22    # "exifExtractingTime":J
    .end local v26    # "flag":Z
    .end local v30    # "i":I
    .end local v49    # "sefFileTypes":Ljava/lang/String;
    .end local v50    # "rowId":J
    .restart local v31    # "idx":I
    .restart local v35    # "lastSlash":I
    .restart local v46    # "previousSlash":I
    :cond_a
    move/from16 v46, v31

    goto/16 :goto_0

    .line 1144
    .end local v31    # "idx":I
    .end local v35    # "lastSlash":I
    .end local v46    # "previousSlash":I
    .restart local v8    # "beforeExifExtractingTime":J
    .restart local v22    # "exifExtractingTime":J
    .restart local v47    # "recordingtype":Ljava/lang/Integer;
    .restart local v50    # "rowId":J
    :cond_b
    const-string/jumbo v59, "is_music"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 1148
    .end local v47    # "recordingtype":Ljava/lang/Integer;
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v59, v0

    const/16 v60, 0x1f

    move/from16 v0, v59

    move/from16 v1, v60

    if-eq v0, v1, :cond_d

    .line 1149
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaFile;->isRawImageFileType(I)Z

    move-result v59

    .line 1148
    if-eqz v59, :cond_7

    .line 1149
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    move/from16 v59, v0

    if-nez v59, :cond_7

    .line 1150
    const/16 v58, -0x1

    .line 1151
    .local v58, "width":I
    const/16 v29, -0x1

    .line 1152
    .local v29, "height":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1153
    const/16 v20, 0x0

    .line 1155
    .local v20, "exif":Landroid/media/ExifInterface;
    :try_start_1
    new-instance v21, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v59

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v20    # "exif":Landroid/media/ExifInterface;
    .local v21, "exif":Landroid/media/ExifInterface;
    move-object/from16 v20, v21

    .line 1159
    .end local v21    # "exif":Landroid/media/ExifInterface;
    :goto_5
    if-eqz v20, :cond_10

    .line 1160
    const/16 v59, 0x2

    move/from16 v0, v59

    new-array v0, v0, [F

    move-object/from16 v36, v0

    .line 1161
    .local v36, "latlng":[F
    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v59

    if-eqz v59, :cond_e

    .line 1162
    const-string/jumbo v59, "latitude"

    const/16 v60, 0x0

    aget v60, v36, v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1163
    const-string/jumbo v59, "longitude"

    const/16 v60, 0x1

    aget v60, v36, v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1166
    :cond_e
    invoke-virtual/range {v20 .. v20}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v54

    .line 1167
    .local v54, "time":J
    const-wide/16 v60, -0x1

    cmp-long v59, v54, v60

    if-eqz v59, :cond_13

    .line 1168
    const-string/jumbo v59, "datetaken"

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1179
    :cond_f
    :goto_6
    const-string/jumbo v59, "ImageWidth"

    const/16 v60, -0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v58

    .line 1180
    const-string/jumbo v59, "ImageLength"

    const/16 v60, -0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v29

    .line 1183
    const-string/jumbo v59, "Orientation"

    const/16 v60, -0x1

    .line 1182
    move-object/from16 v0, v20

    move-object/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v44

    .line 1184
    .local v44, "orientation":I
    const/16 v59, -0x1

    move/from16 v0, v44

    move/from16 v1, v59

    if-eq v0, v1, :cond_10

    .line 1187
    packed-switch v44, :pswitch_data_0

    .line 1198
    :pswitch_0
    const/16 v16, 0x0

    .line 1201
    .local v16, "degree":I
    :goto_7
    const-string/jumbo v59, "orientation"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1204
    .end local v16    # "degree":I
    .end local v36    # "latlng":[F
    .end local v44    # "orientation":I
    .end local v54    # "time":J
    :cond_10
    const/16 v59, -0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-eq v0, v1, :cond_11

    const/16 v59, -0x1

    move/from16 v0, v29

    move/from16 v1, v59

    if-ne v0, v1, :cond_14

    .line 1205
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    .line 1211
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    move/from16 v59, v0

    if-lez v59, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    move/from16 v59, v0

    if-lez v59, :cond_12

    .line 1212
    const-string/jumbo v59, "width"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    move/from16 v60, v0

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1213
    const-string/jumbo v59, "height"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    move/from16 v60, v0

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1215
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    sub-long v22, v60, v8

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get32(Landroid/media/MediaScanner;)J

    move-result-wide v60

    add-long v60, v60, v22

    invoke-static/range {v59 .. v61}, Landroid/media/MediaScanner;->-set10(Landroid/media/MediaScanner;J)J

    .line 1218
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    const-string/jumbo v60, "."

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v34

    .line 1219
    .local v34, "lastDot":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get16(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v59

    if-eqz v59, :cond_7

    if-lez v34, :cond_7

    .line 1220
    const-wide/16 v60, 0x0

    cmp-long v59, v8, v60

    if-eqz v59, :cond_7

    const-wide/16 v60, 0x0

    cmp-long v59, v22, v60

    if-eqz v59, :cond_7

    .line 1221
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    add-int/lit8 v60, v34, 0x1

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    .line 1222
    .local v24, "extention":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get16(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/media/MediaScanner$FileParsingTime;

    .line 1223
    .local v45, "parsingTime":Landroid/media/MediaScanner$FileParsingTime;
    if-eqz v45, :cond_15

    .line 1224
    move-object/from16 v0, v45

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner$FileParsingTime;->addParsingTime(J)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get16(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v24

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1174
    .end local v24    # "extention":Ljava/lang/String;
    .end local v34    # "lastDot":I
    .end local v45    # "parsingTime":Landroid/media/MediaScanner$FileParsingTime;
    .restart local v36    # "latlng":[F
    .restart local v54    # "time":J
    :cond_13
    invoke-virtual/range {v20 .. v20}, Landroid/media/ExifInterface;->getDateTime()J

    move-result-wide v54

    .line 1175
    const-wide/16 v60, -0x1

    cmp-long v59, v54, v60

    if-eqz v59, :cond_f

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    move-wide/from16 v60, v0

    const-wide/16 v62, 0x3e8

    mul-long v60, v60, v62

    sub-long v60, v60, v54

    invoke-static/range {v60 .. v61}, Ljava/lang/Math;->abs(J)J

    move-result-wide v60

    const-wide/32 v62, 0x5265c00

    cmp-long v59, v60, v62

    if-ltz v59, :cond_f

    .line 1176
    const-string/jumbo v59, "datetaken"

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_6

    .line 1189
    .restart local v44    # "orientation":I
    :pswitch_1
    const/16 v16, 0x5a

    .line 1190
    .restart local v16    # "degree":I
    goto/16 :goto_7

    .line 1192
    .end local v16    # "degree":I
    :pswitch_2
    const/16 v16, 0xb4

    .line 1193
    .restart local v16    # "degree":I
    goto/16 :goto_7

    .line 1195
    .end local v16    # "degree":I
    :pswitch_3
    const/16 v16, 0x10e

    .line 1196
    .restart local v16    # "degree":I
    goto/16 :goto_7

    .line 1207
    .end local v16    # "degree":I
    .end local v36    # "latlng":[F
    .end local v44    # "orientation":I
    .end local v54    # "time":J
    :cond_14
    move/from16 v0, v58

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 1208
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto/16 :goto_8

    .line 1227
    .restart local v24    # "extention":Ljava/lang/String;
    .restart local v34    # "lastDot":I
    .restart local v45    # "parsingTime":Landroid/media/MediaScanner$FileParsingTime;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get16(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v59

    new-instance v60, Landroid/media/MediaScanner$FileParsingTime;

    move-object/from16 v0, v60

    move-object/from16 v1, v24

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaScanner$FileParsingTime;-><init>(Ljava/lang/String;J)V

    move-object/from16 v0, v59

    move-object/from16 v1, v24

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1250
    .end local v24    # "extention":Ljava/lang/String;
    .end local v29    # "height":I
    .end local v34    # "lastDot":I
    .end local v45    # "parsingTime":Landroid/media/MediaScanner$FileParsingTime;
    .end local v58    # "width":I
    .restart local v6    # "SEFDataTypes":[I
    .restart local v10    # "beforeSEFExtractingTime":J
    .restart local v26    # "flag":Z
    .restart local v30    # "i":I
    .restart local v49    # "sefFileTypes":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 1251
    .local v18, "e":Ljava/io/IOException;
    const-string/jumbo v59, "MediaScanner"

    const-string/jumbo v60, "IOException in MediaScanner.endFile()"

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 1256
    .end local v18    # "e":Ljava/io/IOException;
    :cond_16
    aget v59, v6, v30

    const/16 v60, 0xa41

    move/from16 v0, v59

    move/from16 v1, v60

    if-eq v0, v1, :cond_9

    .line 1260
    aget v59, v6, v30

    const/16 v60, 0x9e0

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_17

    .line 1262
    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    .line 1263
    const-string/jumbo v60, "Burst_Shot_Info"

    .line 1262
    invoke-static/range {v59 .. v60}, Lcom/samsung/android/media/SemExtendedFormat;->getSEFData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v14

    .line 1264
    .restart local v14    # "data":[B
    if-eqz v14, :cond_17

    .line 1265
    new-instance v28, Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-direct {v0, v14}, Ljava/lang/String;-><init>([B)V

    .line 1266
    .local v28, "group_id":Ljava/lang/String;
    const-string/jumbo v59, "group_id"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1274
    .end local v14    # "data":[B
    .end local v28    # "group_id":Ljava/lang/String;
    :cond_17
    :goto_9
    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v59

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string/jumbo v60, ","

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    aget v60, v6, v30

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    .line 1276
    if-eqz v26, :cond_9

    aget v59, v6, v30

    const/16 v60, 0x800

    move/from16 v0, v59

    move/from16 v1, v60

    if-lt v0, v1, :cond_9

    .line 1277
    aget v59, v6, v30

    rem-int/lit8 v59, v59, 0x10

    if-nez v59, :cond_9

    .line 1278
    const-string/jumbo v59, "MediaScanner"

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v61, "sef_file_type set to "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    aget v61, v6, v30

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    const-string/jumbo v59, "sef_file_type"

    aget v60, v6, v30

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1280
    array-length v0, v6

    move/from16 v59, v0

    const/16 v60, 0x2

    move/from16 v0, v59

    move/from16 v1, v60

    if-le v0, v1, :cond_1a

    .line 1281
    const/4 v15, 0x0

    .line 1282
    .local v15, "dataSubType":I
    const/16 v33, 0x0

    .local v33, "j":I
    :goto_a
    array-length v0, v6

    move/from16 v59, v0

    move/from16 v0, v33

    move/from16 v1, v59

    if-ge v0, v1, :cond_19

    .line 1283
    aget v59, v6, v33

    aget v60, v6, v30

    sub-int v17, v59, v60

    .line 1284
    .local v17, "diffOfDataType":I
    move/from16 v0, v30

    move/from16 v1, v33

    if-eq v0, v1, :cond_18

    const/16 v59, 0x10

    move/from16 v0, v17

    move/from16 v1, v59

    if-ge v0, v1, :cond_18

    if-lez v17, :cond_18

    .line 1285
    add-int/lit8 v59, v17, -0x1

    const/16 v60, 0x1

    shl-int v59, v60, v59

    or-int v15, v15, v59

    .line 1282
    :cond_18
    add-int/lit8 v33, v33, 0x1

    goto :goto_a

    .line 1268
    .end local v15    # "dataSubType":I
    .end local v17    # "diffOfDataType":I
    .end local v33    # "j":I
    :catch_1
    move-exception v18

    .line 1269
    .restart local v18    # "e":Ljava/io/IOException;
    const-string/jumbo v59, "MediaScanner"

    const-string/jumbo v60, "IOException in MediaScanner.endFile()"

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 1288
    .end local v18    # "e":Ljava/io/IOException;
    .restart local v15    # "dataSubType":I
    .restart local v33    # "j":I
    :cond_19
    const-string/jumbo v59, "sef_file_sub_type"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1290
    .end local v15    # "dataSubType":I
    .end local v33    # "j":I
    :cond_1a
    const/16 v26, 0x0

    goto/16 :goto_4

    .line 1293
    :cond_1b
    const-string/jumbo v59, ""

    move-object/from16 v0, v49

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-nez v59, :cond_1c

    .line 1294
    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v59

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string/jumbo v60, ","

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    .line 1295
    const-string/jumbo v59, "MediaScanner"

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v61, "sef_file_types set to "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v59 .. v60}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :cond_1c
    const-string/jumbo v59, "sef_file_types"

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    .end local v6    # "SEFDataTypes":[I
    .end local v26    # "flag":Z
    .end local v30    # "i":I
    .end local v49    # "sefFileTypes":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get36(Landroid/media/MediaScanner;)J

    move-result-wide v60

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v62

    sub-long v62, v62, v10

    add-long v60, v60, v62

    invoke-static/range {v59 .. v61}, Landroid/media/MediaScanner;->-set14(Landroid/media/MediaScanner;J)J

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get17(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v52

    .line 1304
    .local v52, "tableUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get20(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v32

    .line 1305
    .local v32, "inserter":Landroid/media/MediaInserter;
    const-wide/16 v12, 0x0

    .line 1306
    .local v12, "bulkInserterTime":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    move/from16 v59, v0

    if-nez v59, :cond_1e

    .line 1307
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v59

    if-eqz v59, :cond_29

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get38(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v52

    .line 1315
    :cond_1e
    :goto_b
    const/16 v48, 0x0

    .line 1316
    .local v48, "result":Landroid/net/Uri;
    const/16 v38, 0x0

    .line 1317
    .local v38, "needToSetSettings":Z
    const/16 v40, 0x0

    .line 1318
    .local v40, "needToSetSettings_notification":Z
    const/16 v41, 0x0

    .line 1319
    .local v41, "needToSetSettings_notification_2":Z
    const/16 v42, 0x0

    .line 1320
    .local v42, "needToSetSettings_ringtone":Z
    const/16 v43, 0x0

    .line 1321
    .local v43, "needToSetSettings_ringtone_2":Z
    const/16 v39, 0x0

    .line 1325
    .local v39, "needToSetSettings_alarm":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get19(Landroid/media/MediaScanner;)Z

    move-result v59

    if-eqz v59, :cond_21

    .line 1326
    if-eqz p3, :cond_2d

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get8(Landroid/media/MediaScanner;)Z

    move-result v59

    if-nez v59, :cond_20

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get6(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v59 .. v59}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_1f

    .line 1329
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Landroid/media/MediaScanner;->-get6(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v60

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v59

    .line 1328
    if-eqz v59, :cond_20

    .line 1330
    :cond_1f
    const/16 v38, 0x1

    .line 1331
    const/16 v40, 0x1

    .line 1334
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get26(Landroid/media/MediaScanner;)I

    move-result v59

    const/16 v60, 0x1

    move/from16 v0, v59

    move/from16 v1, v60

    if-le v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get9(Landroid/media/MediaScanner;)Z

    move-result v59

    if-eqz v59, :cond_2b

    .line 1374
    :cond_21
    :goto_c
    const-wide/16 v60, 0x0

    cmp-long v59, v50, v60

    if-nez v59, :cond_38

    .line 1375
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get22(Landroid/media/MediaScanner;)I

    move-result v59

    if-eqz v59, :cond_22

    .line 1376
    const-string/jumbo v59, "media_scanner_new_object_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Landroid/media/MediaScanner;->-get22(Landroid/media/MediaScanner;)I

    move-result v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1378
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get17(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v59

    move-object/from16 v0, v52

    move-object/from16 v1, v59

    if-ne v0, v1, :cond_24

    .line 1379
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFormat:I

    move/from16 v27, v0

    .line 1380
    .local v27, "format":I
    if-nez v27, :cond_23

    .line 1381
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-static/range {v59 .. v60}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v27

    .line 1383
    :cond_23
    const-string/jumbo v59, "format"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1385
    .end local v27    # "format":I
    :cond_24
    const-string/jumbo v59, "storage_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Landroid/media/MediaScanner;->-get27(Landroid/media/MediaScanner;)I

    move-result v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1392
    if-eqz v32, :cond_25

    if-eqz v38, :cond_36

    .line 1393
    :cond_25
    if-eqz v32, :cond_26

    .line 1394
    invoke-virtual/range {v32 .. v32}, Landroid/media/MediaInserter;->flushAll()V

    .line 1396
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get21(Landroid/media/MediaScanner;)Landroid/content/ContentProviderClient;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v52

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v48

    .line 1403
    .end local v48    # "result":Landroid/net/Uri;
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get33(Landroid/media/MediaScanner;)J

    move-result-wide v60

    const-wide/16 v62, 0x1

    add-long v60, v60, v62

    invoke-static/range {v59 .. v61}, Landroid/media/MediaScanner;->-set11(Landroid/media/MediaScanner;J)J

    .line 1404
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get29(Landroid/media/MediaScanner;)J

    move-result-wide v60

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v62

    sub-long v62, v62, v12

    add-long v60, v60, v62

    invoke-static/range {v59 .. v61}, Landroid/media/MediaScanner;->-set7(Landroid/media/MediaScanner;J)J

    .line 1405
    if-eqz v48, :cond_27

    .line 1406
    invoke-static/range {v48 .. v48}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v50

    .line 1407
    move-wide/from16 v0, v50

    move-object/from16 v2, p1

    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    .line 1436
    :cond_27
    :goto_e
    if-eqz v38, :cond_28

    .line 1437
    if-eqz v40, :cond_3f

    .line 1438
    const-string/jumbo v59, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v52

    move-wide/from16 v3, v50

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    const/16 v60, 0x1

    invoke-static/range {v59 .. v60}, Landroid/media/MediaScanner;->-set1(Landroid/media/MediaScanner;Z)Z

    .line 1455
    :cond_28
    :goto_f
    return-object v48

    .line 1309
    .end local v38    # "needToSetSettings":Z
    .end local v39    # "needToSetSettings_alarm":Z
    .end local v40    # "needToSetSettings_notification":Z
    .end local v41    # "needToSetSettings_notification_2":Z
    .end local v42    # "needToSetSettings_ringtone":Z
    .end local v43    # "needToSetSettings_ringtone_2":Z
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v59

    if-eqz v59, :cond_2a

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get18(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v52

    goto/16 :goto_b

    .line 1311
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v59

    if-eqz v59, :cond_1e

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get1(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v52

    goto/16 :goto_b

    .line 1335
    .restart local v38    # "needToSetSettings":Z
    .restart local v39    # "needToSetSettings_alarm":Z
    .restart local v40    # "needToSetSettings_notification":Z
    .restart local v41    # "needToSetSettings_notification_2":Z
    .restart local v42    # "needToSetSettings_ringtone":Z
    .restart local v43    # "needToSetSettings_ringtone_2":Z
    .restart local v48    # "result":Landroid/net/Uri;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get7(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v59 .. v59}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_2c

    .line 1336
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Landroid/media/MediaScanner;->-get7(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v60

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v59

    .line 1335
    if-eqz v59, :cond_21

    .line 1337
    :cond_2c
    const/16 v38, 0x1

    .line 1338
    const/16 v41, 0x1

    goto/16 :goto_c

    .line 1341
    :cond_2d
    if-eqz p2, :cond_34

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get12(Landroid/media/MediaScanner;)Z

    move-result v59

    if-nez v59, :cond_2f

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get10(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v59 .. v59}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_2e

    .line 1344
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Landroid/media/MediaScanner;->-get10(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v60

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v59

    .line 1343
    if-eqz v59, :cond_2f

    .line 1345
    :cond_2e
    const/16 v38, 0x1

    .line 1346
    const/16 v42, 0x1

    .line 1349
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get26(Landroid/media/MediaScanner;)I

    move-result v59

    const/16 v60, 0x1

    move/from16 v0, v59

    move/from16 v1, v60

    if-le v0, v1, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get13(Landroid/media/MediaScanner;)Z

    move-result v59

    if-eqz v59, :cond_32

    .line 1356
    :cond_30
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get5(Landroid/media/MediaScanner;)Z

    move-result v59

    if-nez v59, :cond_21

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get4(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v59 .. v59}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_31

    .line 1358
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Landroid/media/MediaScanner;->-get4(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v60

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v59

    .line 1357
    if-eqz v59, :cond_21

    .line 1359
    :cond_31
    const/16 v38, 0x1

    .line 1360
    const/16 v39, 0x1

    goto/16 :goto_c

    .line 1350
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get11(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v59 .. v59}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_33

    .line 1351
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Landroid/media/MediaScanner;->-get11(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v60

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v59

    .line 1350
    if-eqz v59, :cond_30

    .line 1352
    :cond_33
    const/16 v38, 0x1

    .line 1353
    const/16 v43, 0x1

    goto :goto_10

    .line 1363
    :cond_34
    if-eqz p4, :cond_21

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get5(Landroid/media/MediaScanner;)Z

    move-result v59

    if-nez v59, :cond_21

    .line 1365
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get4(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v59 .. v59}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v59

    if-nez v59, :cond_35

    .line 1366
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Landroid/media/MediaScanner;->-get4(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v60

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v59

    .line 1365
    if-eqz v59, :cond_21

    .line 1367
    :cond_35
    const/16 v38, 0x1

    .line 1368
    const/16 v39, 0x1

    goto/16 :goto_c

    .line 1397
    :cond_36
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFormat:I

    move/from16 v59, v0

    const/16 v60, 0x3001

    move/from16 v0, v59

    move/from16 v1, v60

    if-ne v0, v1, :cond_37

    .line 1398
    move-object/from16 v0, v32

    move-object/from16 v1, v52

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaInserter;->insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_d

    .line 1400
    :cond_37
    move-object/from16 v0, v32

    move-object/from16 v1, v52

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_d

    .line 1411
    :cond_38
    move-object/from16 v0, v52

    move-wide/from16 v1, v50

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v48

    .line 1414
    .local v48, "result":Landroid/net/Uri;
    const-string/jumbo v59, "_data"

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1416
    const/16 v37, 0x0

    .line 1417
    .local v37, "mediaType":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v59

    if-nez v59, :cond_3a

    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v25

    .line 1419
    .local v25, "fileType":I
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v59

    if-eqz v59, :cond_3b

    .line 1420
    const/16 v37, 0x2

    .line 1430
    :cond_39
    :goto_11
    const-string/jumbo v59, "media_type"

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1432
    .end local v25    # "fileType":I
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get37(Landroid/media/MediaScanner;)J

    move-result-wide v60

    const-wide/16 v62, 0x1

    add-long v60, v60, v62

    invoke-static/range {v59 .. v61}, Landroid/media/MediaScanner;->-set15(Landroid/media/MediaScanner;J)J

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Landroid/media/MediaScanner;->-get21(Landroid/media/MediaScanner;)Landroid/content/ContentProviderClient;

    move-result-object v59

    const/16 v60, 0x0

    const/16 v61, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v48

    move-object/from16 v2, v57

    move-object/from16 v3, v60

    move-object/from16 v4, v61

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1421
    .restart local v25    # "fileType":I
    :cond_3b
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v59

    if-eqz v59, :cond_3c

    .line 1422
    const/16 v37, 0x3

    goto :goto_11

    .line 1423
    :cond_3c
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v59

    if-eqz v59, :cond_3d

    .line 1424
    const/16 v37, 0x1

    goto :goto_11

    .line 1425
    :cond_3d
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v59

    if-eqz v59, :cond_3e

    .line 1426
    const/16 v37, 0x4

    goto :goto_11

    .line 1427
    :cond_3e
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isDocFileType(I)Z

    move-result v59

    if-eqz v59, :cond_39

    .line 1428
    const-string/jumbo v59, "is_doc"

    const/16 v60, 0x1

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_11

    .line 1440
    .end local v25    # "fileType":I
    .end local v37    # "mediaType":I
    .end local v48    # "result":Landroid/net/Uri;
    :cond_3f
    if-eqz v41, :cond_40

    .line 1441
    const-string/jumbo v59, "notification_sound_2"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v52

    move-wide/from16 v3, v50

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    const/16 v60, 0x1

    invoke-static/range {v59 .. v60}, Landroid/media/MediaScanner;->-set2(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_f

    .line 1443
    :cond_40
    if-eqz v42, :cond_41

    .line 1444
    const-string/jumbo v59, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v52

    move-wide/from16 v3, v50

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    const/16 v60, 0x1

    invoke-static/range {v59 .. v60}, Landroid/media/MediaScanner;->-set3(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_f

    .line 1446
    :cond_41
    if-eqz v43, :cond_42

    .line 1447
    const-string/jumbo v59, "ringtone_2"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v52

    move-wide/from16 v3, v50

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    const/16 v60, 0x1

    invoke-static/range {v59 .. v60}, Landroid/media/MediaScanner;->-set4(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_f

    .line 1449
    :cond_42
    if-eqz v39, :cond_28

    .line 1450
    const-string/jumbo v59, "alarm_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v52

    move-wide/from16 v3, v50

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1451
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v59, v0

    const/16 v60, 0x1

    invoke-static/range {v59 .. v60}, Landroid/media/MediaScanner;->-set0(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_f

    .line 1156
    .end local v10    # "beforeSEFExtractingTime":J
    .end local v12    # "bulkInserterTime":J
    .end local v32    # "inserter":Landroid/media/MediaInserter;
    .end local v38    # "needToSetSettings":Z
    .end local v39    # "needToSetSettings_alarm":Z
    .end local v40    # "needToSetSettings_notification":Z
    .end local v41    # "needToSetSettings_notification_2":Z
    .end local v42    # "needToSetSettings_ringtone":Z
    .end local v43    # "needToSetSettings_ringtone_2":Z
    .end local v52    # "tableUri":Landroid/net/Uri;
    .restart local v20    # "exif":Landroid/media/ExifInterface;
    .restart local v29    # "height":I
    .restart local v58    # "width":I
    :catch_2
    move-exception v19

    .local v19, "ex":Ljava/io/IOException;
    goto/16 :goto_5

    .line 1187
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
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1492
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2}, Landroid/media/MediaScanner;->-wrap0(Landroid/media/MediaScanner;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1493
    const/4 v2, 0x0

    return v2

    .line 1496
    :cond_0
    const/4 v1, 0x0

    .line 1498
    .local v1, "resultFileType":I
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2}, Landroid/media/MediaScanner;->-get14(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1499
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    new-instance v3, Landroid/drm/DrmManagerClient;

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get3(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Landroid/media/MediaScanner;->-set5(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;

    .line 1502
    :cond_1
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2}, Landroid/media/MediaScanner;->-get14(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    invoke-virtual {v2, p1, v5}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1503
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 1504
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2}, Landroid/media/MediaScanner;->-get14(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1505
    .local v0, "drmMimetype":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1506
    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1507
    invoke-static {v0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v1

    .line 1510
    .end local v0    # "drmMimetype":Ljava/lang/String;
    :cond_2
    return v1
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 8
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "defaultValue"    # I

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 816
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 817
    .local v1, "length":I
    if-ne p2, v1, :cond_0

    return p3

    .line 819
    :cond_0
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "start":I
    .local v3, "start":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 821
    .local v0, "ch":C
    if-lt v0, v6, :cond_1

    if-le v0, v7, :cond_2

    :cond_1
    return p3

    .line 823
    :cond_2
    add-int/lit8 v2, v0, -0x30

    .line 824
    .local v2, "result":I
    :goto_0
    if-ge v3, v1, :cond_5

    .line 825
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "start":I
    .restart local p2    # "start":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 826
    if-lt v0, v6, :cond_3

    if-le v0, v7, :cond_4

    :cond_3
    return v2

    .line 827
    :cond_4
    mul-int/lit8 v4, v2, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v2, v4, v5

    move v3, p2

    .end local p2    # "start":I
    .restart local v3    # "start":I
    goto :goto_0

    .line 830
    :cond_5
    return v2
.end method

.method private processImageFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 993
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->-get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 994
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->-get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 995
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->-get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 996
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->-get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 997
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->-get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :goto_0
    return-void

    .line 998
    :catch_0
    move-exception v0

    .local v0, "th":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 11
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "rowId"    # J

    .prologue
    .line 1467
    :try_start_0
    iget-object v7, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v7, p1}, Landroid/media/MediaScanner;->-wrap2(Landroid/media/MediaScanner;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1468
    return-void

    .line 1471
    :cond_0
    iget-object v7, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v7}, Landroid/media/MediaScanner;->-get3(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1472
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1473
    .local v2, "existingSettingValue":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1474
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1475
    .local v6, "settingUri":Landroid/net/Uri;
    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 1476
    .local v5, "ringtoneUri":Landroid/net/Uri;
    iget-object v7, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v7}, Landroid/media/MediaScanner;->-get3(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v7

    .line 1477
    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v8

    .line 1476
    invoke-static {v7, v8, v5}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1479
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1480
    .local v3, "extras":Landroid/os/Bundle;
    const-string/jumbo v7, "volume"

    iget-object v8, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v8}, Landroid/media/MediaScanner;->-get39(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
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

    .line 1482
    .local v4, "log":Ljava/lang/String;
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

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    iget-object v7, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v7}, Landroid/media/MediaScanner;->-get21(Landroid/media/MediaScanner;)Landroid/content/ContentProviderClient;

    move-result-object v7

    const-string/jumbo v8, "mediadb_log"

    invoke-virtual {v7, v8, v4, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1485
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "log":Ljava/lang/String;
    .end local v5    # "ringtoneUri":Landroid/net/Uri;
    .end local v6    # "settingUri":Landroid/net/Uri;
    :cond_1
    iget-object v7, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v7, p1}, Landroid/media/MediaScanner;->-wrap3(Landroid/media/MediaScanner;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1465
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "existingSettingValue":Ljava/lang/String;
    :goto_0
    return-void

    .line 1486
    :catch_0
    move-exception v1

    .line 1487
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "MediaScanner"

    const-string/jumbo v8, "RemoteException in setRingtoneIfNotSet"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private testGenreNameConverter()V
    .locals 2

    .prologue
    .line 922
    const-string/jumbo v0, "2"

    const-string/jumbo v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 923
    const-string/jumbo v0, "(2)"

    const-string/jumbo v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 924
    const-string/jumbo v0, "(2"

    const-string/jumbo v1, "(2"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 925
    const-string/jumbo v0, "2 Foo"

    const-string/jumbo v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 926
    const-string/jumbo v0, "(2) Foo"

    const-string/jumbo v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 927
    const-string/jumbo v0, "(2 Foo"

    const-string/jumbo v1, "(2 Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 928
    const-string/jumbo v0, "2Foo"

    const-string/jumbo v1, "2Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 929
    const-string/jumbo v0, "(2)Foo"

    const-string/jumbo v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 930
    const-string/jumbo v0, "200 Foo"

    const-string/jumbo v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 931
    const-string/jumbo v0, "(200) Foo"

    const-string/jumbo v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 932
    const-string/jumbo v0, "200Foo"

    const-string/jumbo v1, "200Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 933
    const-string/jumbo v0, "(200)Foo"

    const-string/jumbo v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 934
    const-string/jumbo v0, "200)Foo"

    const-string/jumbo v1, "200)Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 935
    const-string/jumbo v0, "200) Foo"

    const-string/jumbo v1, "200) Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 921
    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/high16 v6, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v3, 0x0

    .line 1022
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1024
    .local v0, "map":Landroid/content/ContentValues;
    const-string/jumbo v2, "_data"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    const-string/jumbo v2, "title"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    const-string/jumbo v2, "date_modified"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1027
    const-string/jumbo v2, "_size"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1028
    const-string/jumbo v2, "mime_type"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const-string/jumbo v2, "is_drm"

    iget-boolean v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1031
    const/4 v1, 0x0

    .line 1032
    .local v1, "resolution":Ljava/lang/String;
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    if-lez v2, :cond_0

    .line 1033
    const-string/jumbo v2, "width"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1034
    const-string/jumbo v2, "height"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1035
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

    .line 1038
    .end local v1    # "resolution":Ljava/lang/String;
    :cond_0
    iget-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v2, :cond_6

    .line 1039
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1040
    const-string/jumbo v3, "artist"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 1041
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 1040
    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const-string/jumbo v3, "album"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 1043
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 1042
    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    const-string/jumbo v2, "duration"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1045
    if-eqz v1, :cond_1

    .line 1046
    const-string/jumbo v2, "resolution"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    :cond_1
    const-string/jumbo v2, "weather_ID"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWeatherID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1050
    const-string/jumbo v2, "city_ID"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCityID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1051
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_2

    .line 1052
    const-string/jumbo v2, "latitude"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1053
    const-string/jumbo v2, "longitude"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1056
    :cond_2
    const-string/jumbo v2, "is_360_video"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIs360video:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1057
    const-string/jumbo v2, "recordingtype"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1058
    const-string/jumbo v2, "recording_mode"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1059
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->m3dvideotype:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string/jumbo v2, "type3dvideo"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->m3dvideotype:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    :cond_3
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoCodecInfo:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string/jumbo v2, "video_codec_info"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoCodecInfo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    :cond_4
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAudioCodecInfo:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string/jumbo v2, "audio_codec_info"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAudioCodecInfo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    :cond_5
    iget-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_6

    const-string/jumbo v2, "datetaken"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1089
    :cond_6
    :goto_2
    return-object v0

    .line 1041
    :cond_7
    const-string/jumbo v2, "<unknown>"

    goto/16 :goto_0

    .line 1043
    :cond_8
    const-string/jumbo v2, "<unknown>"

    goto/16 :goto_1

    .line 1063
    :cond_9
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1065
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1066
    const-string/jumbo v4, "artist"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    .line 1067
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 1066
    :goto_3
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    const-string/jumbo v4, "album_artist"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 1069
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 1068
    :goto_4
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    const-string/jumbo v4, "album"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 1071
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 1070
    :goto_5
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    const-string/jumbo v2, "composer"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    const-string/jumbo v2, "genre"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    const-string/jumbo v2, "year"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-nez v4, :cond_e

    :goto_6
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1075
    const-string/jumbo v2, "track"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1076
    const-string/jumbo v2, "duration"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1077
    const-string/jumbo v2, "compilation"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1078
    const-string/jumbo v2, "recordingtype"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1079
    const-string/jumbo v2, "recording_mode"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1080
    const-string/jumbo v2, "bit_depth"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mBitDepth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1081
    const-string/jumbo v2, "sampling_rate"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mSamplingRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1082
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLatitude:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_a

    .line 1083
    const-string/jumbo v2, "latitude"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLatitude:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1084
    const-string/jumbo v2, "longitude"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLongitude:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1086
    :cond_a
    iget-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_6

    const-string/jumbo v2, "datetaken"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_2

    .line 1067
    :cond_b
    const-string/jumbo v2, "<unknown>"

    goto/16 :goto_3

    :cond_c
    move-object v2, v3

    .line 1069
    goto/16 :goto_4

    .line 1071
    :cond_d
    const-string/jumbo v2, "<unknown>"

    goto/16 :goto_5

    .line 1074
    :cond_e
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_6
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;
    .locals 15
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "lastModified"    # J
    .param p5, "fileSize"    # J
    .param p7, "isDirectory"    # Z
    .param p8, "noMedia"    # Z

    .prologue
    .line 610
    move-object/from16 v0, p2

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 611
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 612
    move-wide/from16 v0, p5

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    .line 613
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 615
    if-nez p7, :cond_3

    .line 616
    if-nez p8, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->-wrap1(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 617
    const/16 p8, 0x1

    .line 619
    .end local p8    # "noMedia":Z
    :cond_0
    move/from16 v0, p8

    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    .line 622
    if-eqz p2, :cond_1

    .line 623
    invoke-static/range {p2 .. p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 627
    :cond_1
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-nez v3, :cond_2

    .line 628
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v12

    .line 629
    .local v12, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-eqz v12, :cond_2

    .line 630
    iget v3, v12, Landroid/media/MediaFile$MediaFileType;->fileType:I

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 631
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 632
    iget-object v3, v12, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 637
    .end local v12    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_2
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v3}, Landroid/media/MediaScanner;->-wrap0(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 638
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 642
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 643
    .local v8, "beforeMakeEntryTime":J
    const/4 v2, 0x0

    .line 644
    .local v2, "entry":Landroid/media/MediaScanner$FileEntry;
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v3}, Landroid/media/MediaScanner;->-get40(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 645
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v3}, Landroid/media/MediaScanner;->-get15(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    check-cast v2, Landroid/media/MediaScanner$FileEntry;

    .line 649
    .local v2, "entry":Landroid/media/MediaScanner$FileEntry;
    :goto_0
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v3}, Landroid/media/MediaScanner;->-get34(Landroid/media/MediaScanner;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Landroid/media/MediaScanner;->-set12(Landroid/media/MediaScanner;J)J

    .line 651
    if-eqz v2, :cond_8

    iget-wide v4, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    sub-long v10, p3, v4

    .line 652
    .local v10, "delta":J
    :goto_1
    const-wide/16 v4, 0x1

    cmp-long v3, v10, v4

    if-gtz v3, :cond_4

    const-wide/16 v4, -0x1

    cmp-long v3, v10, v4

    if-gez v3, :cond_9

    :cond_4
    const/4 v13, 0x1

    .line 653
    .local v13, "wasModified":Z
    :goto_2
    if-eqz v2, :cond_5

    if-eqz v13, :cond_6

    .line 654
    :cond_5
    if-eqz v13, :cond_a

    .line 655
    move-wide/from16 v0, p3

    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    .line 661
    :goto_3
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    .line 664
    :cond_6
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v3}, Landroid/media/MediaScanner;->-get25(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 665
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v3}, Landroid/media/MediaScanner;->-get23(Landroid/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    const/4 v3, 0x0

    return-object v3

    .line 647
    .end local v10    # "delta":J
    .end local v13    # "wasModified":Z
    .local v2, "entry":Landroid/media/MediaScanner$FileEntry;
    :cond_7
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v2

    .local v2, "entry":Landroid/media/MediaScanner$FileEntry;
    goto :goto_0

    .line 651
    :cond_8
    const-wide/16 v10, 0x0

    goto :goto_1

    .line 652
    .restart local v10    # "delta":J
    :cond_9
    const/4 v13, 0x0

    .restart local v13    # "wasModified":Z
    goto :goto_2

    .line 657
    :cond_a
    new-instance v2, Landroid/media/MediaScanner$FileEntry;

    .end local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    const-wide/16 v3, 0x0

    move-object/from16 v5, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;J)V

    .line 659
    .restart local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    if-eqz p7, :cond_b

    const/16 v3, 0x3001

    :goto_4
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFormat:I

    goto :goto_3

    :cond_b
    const/4 v3, 0x0

    goto :goto_4

    .line 671
    :cond_c
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 672
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 673
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 674
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 675
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 676
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 677
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 678
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    .line 679
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    .line 680
    move-object/from16 v0, p1

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 681
    move-wide/from16 v0, p3

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    .line 682
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    .line 683
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    .line 684
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 685
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    .line 686
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    .line 687
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    .line 688
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLatitude:F

    .line 689
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLongitude:F

    .line 690
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mSamplingRate:I

    .line 691
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mBitDepth:I

    .line 692
    const/4 v3, -0x1

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    .line 693
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingMode:I

    .line 694
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWeatherID:I

    .line 695
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCityID:J

    .line 696
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIs360video:I

    .line 697
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPrivateStorage:I

    .line 698
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->m3dvideotype:Ljava/lang/String;

    .line 699
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoCodecInfo:Ljava/lang/String;

    .line 700
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAudioCodecInfo:Ljava/lang/String;

    .line 701
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    .line 703
    return-object v2
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    .locals 27
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "lastModified"    # J
    .param p5, "fileSize"    # J
    .param p7, "isDirectory"    # Z
    .param p8, "scanAlways"    # Z
    .param p9, "noMedia"    # Z

    .prologue
    .line 723
    const/16 v26, 0x0

    .local v26, "result":Landroid/net/Uri;
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move/from16 v12, p7

    move/from16 v13, p9

    .line 726
    :try_start_0
    invoke-virtual/range {v5 .. v13}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;

    move-result-object v5

    .line 729
    .local v5, "entry":Landroid/media/MediaScanner$FileEntry;
    if-nez v5, :cond_0

    .line 730
    const/4 v4, 0x0

    return-object v4

    .line 736
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get22(Landroid/media/MediaScanner;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 737
    const-wide/16 v12, 0x0

    iput-wide v12, v5, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    .line 740
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get19(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 741
    iget-object v4, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 742
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get8(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 743
    iget-object v4, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->-get6(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 742
    if-nez v4, :cond_6

    .line 744
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get12(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 745
    iget-object v4, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->-get10(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 742
    if-nez v4, :cond_6

    .line 746
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get5(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 747
    iget-object v4, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->-get4(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 742
    if-nez v4, :cond_6

    .line 748
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get26(Landroid/media/MediaScanner;)I

    move-result v4

    const/4 v11, 0x1

    if-le v4, v11, :cond_7

    .line 749
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get9(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->-get7(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 750
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get13(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v5, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->-get11(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 741
    if-eqz v4, :cond_7

    .line 751
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

    .line 752
    const-string/jumbo v12, " since ringtone setting didn\'t finish"

    .line 751
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/16 p8, 0x1

    .line 758
    .end local p8    # "scanAlways":Z
    :cond_7
    if-eqz v5, :cond_9

    iget-boolean v4, v5, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-nez v4, :cond_8

    if-eqz p8, :cond_9

    .line 759
    :cond_8
    if-eqz p9, :cond_a

    .line 760
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v26

    .line 812
    .end local v5    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v26    # "result":Landroid/net/Uri;
    :cond_9
    :goto_0
    return-object v26

    .line 762
    .restart local v5    # "entry":Landroid/media/MediaScanner$FileEntry;
    .restart local v26    # "result":Landroid/net/Uri;
    :cond_a
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v22

    .line 763
    .local v22, "lowpath":Ljava/lang/String;
    const-string/jumbo v4, "/ringtones/"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_10

    const/4 v6, 0x1

    .line 764
    .local v6, "ringtones":Z
    :goto_1
    const-string/jumbo v4, "/notifications/"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_11

    const/4 v7, 0x1

    .line 765
    .local v7, "notifications":Z
    :goto_2
    const-string/jumbo v4, "/alarms/"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_12

    const/4 v8, 0x1

    .line 766
    .local v8, "alarms":Z
    :goto_3
    const-string/jumbo v4, "/podcasts/"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_13

    const/4 v10, 0x1

    .line 767
    .local v10, "podcasts":Z
    :goto_4
    const-string/jumbo v4, "/music/"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_14

    .line 768
    if-nez v6, :cond_b

    if-eqz v7, :cond_15

    :cond_b
    const/4 v9, 0x0

    .line 770
    .local v9, "music":Z
    :goto_5
    const-wide/16 v14, 0x0

    .local v14, "beforeMetaParsingTime":J
    const-wide/16 v24, 0x0

    .line 771
    .local v24, "metaParsingTime":J
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v18

    .line 772
    .local v18, "isaudio":Z
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v20

    .line 773
    .local v20, "isvideo":Z
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v19

    .line 776
    .local v19, "isimage":Z
    if-nez v18, :cond_c

    if-eqz v20, :cond_d

    .line 777
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 778
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-static {v4, v0, v1, v2}, Landroid/media/MediaScanner;->-wrap5(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 779
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v24, v12, v14

    .line 780
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get35(Landroid/media/MediaScanner;)J

    move-result-wide v12

    add-long v12, v12, v24

    invoke-static {v4, v12, v13}, Landroid/media/MediaScanner;->-set13(Landroid/media/MediaScanner;J)J

    .line 783
    :cond_d
    if-eqz v19, :cond_e

    .line 784
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v11, 0x1f

    if-eq v4, v11, :cond_e

    .line 785
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 786
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    .line 787
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v24, v12, v14

    .line 788
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get28(Landroid/media/MediaScanner;)J

    move-result-wide v12

    add-long v12, v12, v24

    invoke-static {v4, v12, v13}, Landroid/media/MediaScanner;->-set6(Landroid/media/MediaScanner;J)J

    .line 792
    :cond_e
    const-string/jumbo v4, "."

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    .line 793
    .local v21, "lastDot":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get16(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_f

    if-lez v21, :cond_f

    .line 794
    const-wide/16 v12, 0x0

    cmp-long v4, v14, v12

    if-eqz v4, :cond_f

    const-wide/16 v12, 0x0

    cmp-long v4, v24, v12

    if-eqz v4, :cond_f

    .line 795
    add-int/lit8 v4, v21, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v17

    .line 796
    .local v17, "extention":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get16(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/media/MediaScanner$FileParsingTime;

    .line 797
    .local v23, "parsingTime":Landroid/media/MediaScanner$FileParsingTime;
    if-eqz v23, :cond_16

    .line 798
    invoke-virtual/range {v23 .. v25}, Landroid/media/MediaScanner$FileParsingTime;->addParsingTime(J)V

    .line 799
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get16(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v17    # "extention":Ljava/lang/String;
    .end local v23    # "parsingTime":Landroid/media/MediaScanner$FileParsingTime;
    :cond_f
    :goto_6
    move-object/from16 v4, p0

    .line 804
    invoke-direct/range {v4 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v26

    .local v26, "result":Landroid/net/Uri;
    goto/16 :goto_0

    .line 763
    .end local v6    # "ringtones":Z
    .end local v7    # "notifications":Z
    .end local v8    # "alarms":Z
    .end local v9    # "music":Z
    .end local v10    # "podcasts":Z
    .end local v14    # "beforeMetaParsingTime":J
    .end local v18    # "isaudio":Z
    .end local v19    # "isimage":Z
    .end local v20    # "isvideo":Z
    .end local v21    # "lastDot":I
    .end local v24    # "metaParsingTime":J
    .local v26, "result":Landroid/net/Uri;
    :cond_10
    const/4 v6, 0x0

    .restart local v6    # "ringtones":Z
    goto/16 :goto_1

    .line 764
    :cond_11
    const/4 v7, 0x0

    .restart local v7    # "notifications":Z
    goto/16 :goto_2

    .line 765
    :cond_12
    const/4 v8, 0x0

    .restart local v8    # "alarms":Z
    goto/16 :goto_3

    .line 766
    :cond_13
    const/4 v10, 0x0

    .restart local v10    # "podcasts":Z
    goto/16 :goto_4

    .line 767
    :cond_14
    const/4 v9, 0x1

    .restart local v9    # "music":Z
    goto/16 :goto_5

    .line 768
    .end local v9    # "music":Z
    :cond_15
    if-nez v8, :cond_b

    if-nez v10, :cond_b

    const/4 v9, 0x1

    .restart local v9    # "music":Z
    goto/16 :goto_5

    .line 801
    .restart local v14    # "beforeMetaParsingTime":J
    .restart local v17    # "extention":Ljava/lang/String;
    .restart local v18    # "isaudio":Z
    .restart local v19    # "isimage":Z
    .restart local v20    # "isvideo":Z
    .restart local v21    # "lastDot":I
    .restart local v23    # "parsingTime":Landroid/media/MediaScanner$FileParsingTime;
    .restart local v24    # "metaParsingTime":J
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get16(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v11, Landroid/media/MediaScanner$FileParsingTime;

    move-object/from16 v0, v17

    move-wide/from16 v1, v24

    invoke-direct {v11, v0, v1, v2}, Landroid/media/MediaScanner$FileParsingTime;-><init>(Ljava/lang/String;J)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 807
    .end local v5    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v6    # "ringtones":Z
    .end local v7    # "notifications":Z
    .end local v8    # "alarms":Z
    .end local v9    # "music":Z
    .end local v10    # "podcasts":Z
    .end local v14    # "beforeMetaParsingTime":J
    .end local v17    # "extention":Ljava/lang/String;
    .end local v18    # "isaudio":Z
    .end local v19    # "isimage":Z
    .end local v20    # "isvideo":Z
    .end local v21    # "lastDot":I
    .end local v22    # "lowpath":Ljava/lang/String;
    .end local v23    # "parsingTime":Landroid/media/MediaScanner$FileParsingTime;
    .end local v24    # "metaParsingTime":J
    :catch_0
    move-exception v16

    .line 808
    .local v16, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "MediaScanner"

    const-string/jumbo v11, "RemoteException in MediaScanner.scanFile()"

    move-object/from16 v0, v16

    invoke-static {v4, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public getGenreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "genreTagValue"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0xff

    const/16 v11, 0x29

    const/4 v10, 0x0

    .line 939
    if-nez p1, :cond_0

    .line 940
    return-object v10

    .line 942
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 944
    .local v5, "length":I
    if-lez v5, :cond_6

    .line 945
    const/4 v7, 0x0

    .line 946
    .local v7, "parenthesized":Z
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 947
    .local v6, "number":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 948
    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 949
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 950
    .local v0, "c":C
    if-nez v4, :cond_1

    const/16 v9, 0x28

    if-ne v0, v9, :cond_1

    .line 951
    const/4 v7, 0x1

    .line 948
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 952
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 953
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 958
    .end local v0    # "c":C
    :cond_2
    if-ge v4, v5, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 959
    :goto_2
    if-eqz v7, :cond_5

    if-ne v1, v11, :cond_5

    .line 962
    :cond_3
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    .line 963
    .local v3, "genreIndex":S
    if-ltz v3, :cond_6

    .line 964
    invoke-static {}, Landroid/media/MediaScanner;->-get0()[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-ge v3, v9, :cond_7

    invoke-static {}, Landroid/media/MediaScanner;->-get0()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v3

    if-eqz v9, :cond_7

    .line 965
    invoke-static {}, Landroid/media/MediaScanner;->-get0()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    .line 958
    .end local v3    # "genreIndex":S
    :cond_4
    const/16 v1, 0x20

    .local v1, "charAfterNumber":C
    goto :goto_2

    .line 960
    .end local v1    # "charAfterNumber":C
    :cond_5
    if-nez v7, :cond_6

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    .line 959
    if-nez v9, :cond_3

    .line 988
    .end local v4    # "i":I
    .end local v6    # "number":Ljava/lang/StringBuffer;
    .end local v7    # "parenthesized":Z
    :cond_6
    :goto_3
    return-object p1

    .line 966
    .restart local v3    # "genreIndex":S
    .restart local v4    # "i":I
    .restart local v6    # "number":Ljava/lang/StringBuffer;
    .restart local v7    # "parenthesized":Z
    :cond_7
    if-ne v3, v12, :cond_8

    .line 967
    return-object v10

    .line 968
    :cond_8
    if-ge v3, v12, :cond_a

    add-int/lit8 v9, v4, 0x1

    if-ge v9, v5, :cond_a

    .line 971
    if-eqz v7, :cond_9

    if-ne v1, v11, :cond_9

    .line 972
    add-int/lit8 v4, v4, 0x1

    .line 974
    :cond_9
    :try_start_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 975
    .local v8, "ret":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_6

    .line 976
    return-object v8

    .line 980
    .end local v8    # "ret":Ljava/lang/String;
    :cond_a
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    return-object v9

    .line 983
    .end local v3    # "genreIndex":S
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    goto :goto_3
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 834
    const-string/jumbo v4, "title"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "title;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 838
    :cond_0
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 833
    :cond_1
    :goto_0
    return-void

    .line 839
    :cond_2
    const-string/jumbo v4, "artist"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "artist;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 840
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_0

    .line 841
    :cond_4
    const-string/jumbo v4, "albumartist"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "albumartist;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 842
    const-string/jumbo v4, "band"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 841
    if-nez v4, :cond_5

    .line 842
    const-string/jumbo v4, "band;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 841
    if-eqz v4, :cond_6

    .line 843
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_0

    .line 844
    :cond_6
    const-string/jumbo v4, "album"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "album;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 845
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_0

    .line 846
    :cond_8
    const-string/jumbo v4, "composer"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string/jumbo v4, "composer;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 847
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_0

    .line 848
    :cond_a
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->-get24(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 849
    const-string/jumbo v4, "genre"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string/jumbo v4, "genre;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 848
    if-eqz v4, :cond_c

    .line 850
    :cond_b
    invoke-virtual {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_0

    .line 851
    :cond_c
    const-string/jumbo v4, "year"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string/jumbo v4, "year;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 852
    :cond_d
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    goto/16 :goto_0

    .line 853
    :cond_e
    const-string/jumbo v4, "tracknumber"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string/jumbo v4, "tracknumber;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 856
    :cond_f
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    .line 857
    .local v1, "num":I
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v2, v2, 0x3e8

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v2, v1

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 858
    .end local v1    # "num":I
    :cond_10
    const-string/jumbo v4, "discnumber"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 859
    const-string/jumbo v4, "set"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 858
    if-nez v4, :cond_11

    .line 859
    const-string/jumbo v4, "set;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 858
    if-eqz v4, :cond_12

    .line 862
    :cond_11
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    .line 863
    .restart local v1    # "num":I
    mul-int/lit16 v2, v1, 0x3e8

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v3, v3, 0x3e8

    add-int/2addr v2, v3

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 864
    .end local v1    # "num":I
    :cond_12
    const-string/jumbo v4, "duration"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 865
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_0

    .line 866
    :cond_13
    const-string/jumbo v4, "writer"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string/jumbo v4, "writer;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 867
    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    goto/16 :goto_0

    .line 868
    :cond_15
    const-string/jumbo v4, "compilation"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 869
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    goto/16 :goto_0

    .line 870
    :cond_16
    const-string/jumbo v4, "isdrm"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 871
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_17

    :goto_1
    iput-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    goto/16 :goto_0

    :cond_17
    move v2, v3

    goto :goto_1

    .line 872
    :cond_18
    const-string/jumbo v2, "width"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 873
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    goto/16 :goto_0

    .line 874
    :cond_19
    const-string/jumbo v2, "height"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 875
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto/16 :goto_0

    .line 876
    :cond_1a
    const-string/jumbo v2, "recordingtype"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 877
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    goto/16 :goto_0

    .line 878
    :cond_1b
    const-string/jumbo v2, "recordingmode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 879
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingMode:I

    goto/16 :goto_0

    .line 880
    :cond_1c
    const-string/jumbo v2, "weather"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 881
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWeatherID:I

    goto/16 :goto_0

    .line 882
    :cond_1d
    const-string/jumbo v2, "cityid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 883
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCityID:J

    goto/16 :goto_0

    .line 884
    :cond_1e
    const-string/jumbo v2, "location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 885
    const/16 v2, 0x2d

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 886
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1f

    .line 887
    const/16 v2, 0x2b

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 889
    :cond_1f
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    .line 890
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    .line 891
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLatitude:F

    .line 892
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLongitude:F

    goto/16 :goto_0

    .line 893
    .end local v0    # "index":I
    :cond_20
    const-string/jumbo v2, "samplingrate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 894
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mSamplingRate:I

    goto/16 :goto_0

    .line 895
    :cond_21
    const-string/jumbo v2, "bitspersample"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 896
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mBitDepth:I

    goto/16 :goto_0

    .line 897
    :cond_22
    const-string/jumbo v2, "is360video"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 898
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIs360video:I

    goto/16 :goto_0

    .line 899
    :cond_23
    const-string/jumbo v2, "3dvideotype"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 900
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->m3dvideotype:Ljava/lang/String;

    goto/16 :goto_0

    .line 901
    :cond_24
    const-string/jumbo v2, "videocodecinfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 902
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoCodecInfo:Ljava/lang/String;

    goto/16 :goto_0

    .line 903
    :cond_25
    const-string/jumbo v2, "audiocodecinfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 904
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAudioCodecInfo:Ljava/lang/String;

    goto/16 :goto_0

    .line 905
    :cond_26
    const-string/jumbo v2, "creationtime"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 906
    if-eqz p2, :cond_1

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    goto/16 :goto_0
.end method

.method public isNoMediaPath(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 708
    invoke-static {p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "lastModified"    # J
    .param p4, "fileSize"    # J
    .param p6, "isDirectory"    # Z
    .param p7, "noMedia"    # Z

    .prologue
    .line 716
    if-eqz p6, :cond_0

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->-get30(Landroid/media/MediaScanner;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/media/MediaScanner;->-set8(Landroid/media/MediaScanner;J)J

    .line 718
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

    .line 713
    return-void

    .line 717
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->-get31(Landroid/media/MediaScanner;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/media/MediaScanner;->-set9(Landroid/media/MediaScanner;J)J

    goto :goto_0
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1004
    const-string/jumbo v0, "audio/mp4"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1004
    if-eqz v0, :cond_0

    .line 1009
    return-void

    .line 1011
    :cond_0
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1012
    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 1003
    return-void
.end method
