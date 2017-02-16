.class Lcom/android/systemui/qs/QSBarController$1;
.super Ljava/lang/Object;
.source "QSBarController.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$QsBarCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSBarController;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSBarController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSBarController$1;->this$0:Lcom/android/systemui/qs/QSBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSBarController$1;->this$0:Lcom/android/systemui/qs/QSBarController;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/QSBarController;->-wrap1(Lcom/android/systemui/qs/QSBarController;Z)V

    return-void
.end method
