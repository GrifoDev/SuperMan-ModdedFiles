.class public final Lcom/samsung/android/security/SemSdCardEncryption$Error;
.super Ljava/lang/Object;
.source "SemSdCardEncryption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/security/SemSdCardEncryption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation


# static fields
.field public static final DECRYPT:I = 0x6

.field public static final ENCRYPT:I = 0x5

.field public static final FILE_OPEN:I = 0xb

.field public static final MOUNT:I = 0x7

.field public static final NO:I = 0x0

.field public static final OTHER_ENCRYPT:I = 0x8

.field public static final PRESCAN_FULL:I = 0x4

.field public static final PWD_CREATE:I = 0x1

.field public static final PWD_DELETE:I = 0x3

.field public static final PWD_UPDATE:I = 0x2

.field public static final UNMOUNT:I = 0x8


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
