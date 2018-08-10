.class public Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;
.super Ljava/lang/Object;
.source "SDCBinaryInfo.java"


# instance fields
.field public chipName:Ljava/lang/String;

.field public chipVersion:Ljava/lang/String;

.field public isBootMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;->chipName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;->chipVersion:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;->isBootMode:Z

    return-void
.end method
