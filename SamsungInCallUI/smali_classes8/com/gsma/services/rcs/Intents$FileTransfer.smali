.class public Lcom/gsma/services/rcs/Intents$FileTransfer;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileTransfer"
.end annotation


# static fields
.field public static final ACTION_INITIATE_GROUP_FILE_TRANSFER:Ljava/lang/String; = "com.gsma.services.rcs.action.INITIATE_GROUP_FILE_TRANSFER"

.field public static final ACTION_INITIATE_ONE_TO_ONE_FILE_TRANSFER:Ljava/lang/String; = "com.gsma.services.rcs.action.INITIATE_ONE_TO_ONE_FILE_TRANSFER"

.field public static final ACTION_VIEW_FILE_TRANSFER:Ljava/lang/String; = "com.gsma.services.rcs.action.VIEW_FILE_TRANSFER"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
