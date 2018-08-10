.class public Lcom/samsung/android/security/MemoryWipeUtils;
.super Ljava/lang/Object;
.source "MemoryWipeUtils.java"


# static fields
.field public static final DUMMY_SEND_COUNT:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 4

    const/16 v3, 0x10

    new-instance v0, Ljava/lang/String;

    new-array v1, v3, [B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/security/MemoryWipeUtils;->clear(Landroid/os/IBinder;Ljava/lang/String;II)V

    return-void
.end method

.method public static clear(Landroid/os/IBinder;Ljava/lang/String;II)V
    .locals 19

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v13

    if-nez v13, :cond_0

    const-string/jumbo v13, "encrypted"

    const-string/jumbo v16, "ro.crypto.state"

    invoke-static/range {v16 .. v16}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-string/jumbo v5, "                                "

    if-gez p3, :cond_1

    const/16 p3, 0x0

    :cond_1
    div-int/lit8 v13, p3, 0x20

    add-int/lit8 p3, v13, 0x1

    if-eqz p0, :cond_3

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_0
    const/16 v13, 0x40

    if-ge v9, v13, :cond_3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v12, 0x0

    :goto_1
    move/from16 v0, p3

    if-ge v12, v0, :cond_2

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-interface {v0, v1, v2, v3, v13}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catch_0
    move-exception v8

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v13

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v13

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v6, v10, v14

    const-string/jumbo v13, "MDF"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v17, Ljava/lang/Exception;

    invoke-direct/range {v17 .. v17}, Ljava/lang/Exception;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "::count = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x40

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", delay = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "ms"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static clear([C)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    aput-char v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getChars(Landroid/widget/TextView;)[C
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    check-cast v2, Landroid/text/SpannableStringBuilder;

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    new-array v0, v3, [C

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    aput-char v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    return-object v0
.end method
