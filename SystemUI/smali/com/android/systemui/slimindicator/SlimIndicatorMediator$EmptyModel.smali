.class Lcom/android/systemui/slimindicator/SlimIndicatorMediator$EmptyModel;
.super Ljava/lang/Object;
.source "SlimIndicatorMediator.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/slimindicator/SlimIndicatorMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmptyModel"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/slimindicator/SlimIndicatorMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$EmptyModel;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsLockCarrier()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getIsShowCarrier()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
