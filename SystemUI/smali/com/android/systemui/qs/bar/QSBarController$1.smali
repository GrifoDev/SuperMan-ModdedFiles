.class Lcom/android/systemui/qs/bar/QSBarController$1;
.super Ljava/lang/Object;
.source "QSBarController.java"

# interfaces
.implements Lcom/android/systemui/qs/bar/QSBarItem$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/bar/QSBarController;->createBarItem(Ljava/lang/String;)Lcom/android/systemui/qs/bar/QSBarItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/QSBarController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/QSBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/QSBarController$1;->this$0:Lcom/android/systemui/qs/bar/QSBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyBarOnTopList(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSBarController$1;->this$0:Lcom/android/systemui/qs/bar/QSBarController;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/systemui/qs/bar/QSBarController;->-wrap0(Lcom/android/systemui/qs/bar/QSBarController;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public getQSPanel()Lcom/android/systemui/qs/QSPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSBarController$1;->this$0:Lcom/android/systemui/qs/bar/QSBarController;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/QSBarController;->-get0(Lcom/android/systemui/qs/bar/QSBarController;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    return-object v0
.end method

.method public onHeightChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSBarController$1;->this$0:Lcom/android/systemui/qs/bar/QSBarController;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/QSBarController;->-wrap1(Lcom/android/systemui/qs/bar/QSBarController;)V

    return-void
.end method
