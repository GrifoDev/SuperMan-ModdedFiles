.class public Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;
.super Ljava/lang/Object;
.source "SimplePersonaInfos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/operations/SimplePersonaInfos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimplePersonaInfo"
.end annotation


# instance fields
.field public id:I

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/bridge/operations/SimplePersonaInfos;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/bridge/operations/SimplePersonaInfos;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->this$0:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->id:I

    iput-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->type:Ljava/lang/String;

    return-void
.end method
