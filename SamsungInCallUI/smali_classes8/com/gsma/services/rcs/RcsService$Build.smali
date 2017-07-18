.class public Lcom/gsma/services/rcs/RcsService$Build;
.super Ljava/lang/Object;
.source "RcsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/RcsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Build"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/RcsService$Build$VERSION_CODES;
    }
.end annotation


# static fields
.field public static final API_CODENAME:Ljava/lang/String; = "GSMA"

.field public static final API_INCREMENTAL:I = 0x1

.field public static final API_VERSION:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
