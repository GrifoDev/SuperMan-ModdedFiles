.class public Lcom/samsung/android/sdk/handwriting/common/HwrConfig;
.super Ljava/lang/Object;
.source "HwrConfig.java"


# static fields
.field public static final FILE_SEPARATOR:Ljava/lang/String;

.field public static final PATH_SEPARATOR:Ljava/lang/String;

.field private static mLibraryAbi:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/common/HwrConfig;->FILE_SEPARATOR:Ljava/lang/String;

    const-string/jumbo v0, "path.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/common/HwrConfig;->PATH_SEPARATOR:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/sdk/handwriting/common/HwrConfig;->mLibraryAbi:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setLibraryAbi(I)V
    .locals 0

    sput p0, Lcom/samsung/android/sdk/handwriting/common/HwrConfig;->mLibraryAbi:I

    return-void
.end method
