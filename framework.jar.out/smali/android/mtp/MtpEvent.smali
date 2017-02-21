.class public Landroid/mtp/MtpEvent;
.super Ljava/lang/Object;
.source "MtpEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpEvent$IllegalParameterAccess;
    }
.end annotation


# static fields
.field public static final EVENT_CANCEL_TRANSACTION:I = 0x4001

.field public static final EVENT_CAPTURE_COMPLETE:I = 0x400d

.field public static final EVENT_DEVICE_INFO_CHANGED:I = 0x4008

.field public static final EVENT_DEVICE_PROP_CHANGED:I = 0x4006

.field public static final EVENT_DEVICE_RESET:I = 0x400b

.field public static final EVENT_OBJECT_ADDED:I = 0x4002

.field public static final EVENT_OBJECT_INFO_CHANGED:I = 0x4007

.field public static final EVENT_OBJECT_PROP_CHANGED:I = 0xc801

.field public static final EVENT_OBJECT_PROP_DESC_CHANGED:I = 0xc802

.field public static final EVENT_OBJECT_REFERENCES_CHANGED:I = 0xc803

.field public static final EVENT_OBJECT_REMOVED:I = 0x4003

.field public static final EVENT_REQUEST_OBJECT_TRANSFER:I = 0x4009

.field public static final EVENT_STORAGE_INFO_CHANGED:I = 0x400c

.field public static final EVENT_STORE_ADDED:I = 0x4004

.field public static final EVENT_STORE_FULL:I = 0x400a

.field public static final EVENT_STORE_REMOVED:I = 0x4005

.field public static final EVENT_UNDEFINED:I = 0x4000

.field public static final EVENT_UNREPORTED_STATUS:I = 0x400e


# instance fields
.field private mEventCode:I

.field private mParameter1:I

.field private mParameter2:I

.field private mParameter3:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4000

    iput v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    return-void
.end method


# virtual methods
.method public getDevicePropCode()I
    .locals 3

    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    const-string/jumbo v1, "devicePropCode"

    iget v2, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_0
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4006
        :pswitch_0
    .end packed-switch
.end method

.method public getEventCode()I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    return v0
.end method

.method public getObjectFormatCode()I
    .locals 3

    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    const-string/jumbo v1, "objectFormatCode"

    iget v2, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_0
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter2:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xc802
        :pswitch_0
    .end packed-switch
.end method

.method public getObjectHandle()I
    .locals 3

    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    const-string/jumbo v1, "objectHandle"

    iget v2, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    throw v0

    :sswitch_0
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :sswitch_1
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :sswitch_2
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :sswitch_3
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :sswitch_4
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :sswitch_5
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :sswitch_data_0
    .sparse-switch
        0x4002 -> :sswitch_0
        0x4003 -> :sswitch_1
        0x4007 -> :sswitch_2
        0x4009 -> :sswitch_3
        0xc801 -> :sswitch_4
        0xc803 -> :sswitch_5
    .end sparse-switch
.end method

.method public getObjectPropCode()I
    .locals 3

    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    const-string/jumbo v1, "objectPropCode"

    iget v2, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_0
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter2:I

    return v0

    :pswitch_1
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :pswitch_data_0
    .packed-switch 0xc801
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getParameter1()I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0
.end method

.method public getParameter2()I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter2:I

    return v0
.end method

.method public getParameter3()I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter3:I

    return v0
.end method

.method public getStorageId()I
    .locals 3

    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    const-string/jumbo v1, "storageID"

    iget v2, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_1
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :pswitch_2
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :pswitch_3
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :pswitch_4
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :pswitch_data_0
    .packed-switch 0x4004
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getTransactionId()I
    .locals 3

    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    const-string/jumbo v1, "transactionID"

    iget v2, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_0
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x400d
        :pswitch_0
    .end packed-switch
.end method
