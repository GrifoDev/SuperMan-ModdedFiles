.class Lcom/android/systemui/slimindicator/SlimIndicatorMediator$EmptyBox;
.super Ljava/lang/Object;
.source "SlimIndicatorMediator.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/slimindicator/SlimIndicatorMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmptyBox"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/slimindicator/SlimIndicatorMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$EmptyBox;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlackListDB()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "EmptyBlackList"

    return-object v0
.end method

.method public getBoxCallback()Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBoxCallback;
    .locals 2

    new-instance v0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$EmptyBoxCallback;

    iget-object v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$EmptyBox;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorMediator;

    invoke-direct {v0, v1}, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$EmptyBoxCallback;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorMediator;)V

    return-object v0
.end method

.method public getModel()Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorModel;
    .locals 2

    new-instance v0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$EmptyModel;

    iget-object v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$EmptyBox;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorMediator;

    invoke-direct {v0, v1}, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$EmptyModel;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorMediator;)V

    return-object v0
.end method
