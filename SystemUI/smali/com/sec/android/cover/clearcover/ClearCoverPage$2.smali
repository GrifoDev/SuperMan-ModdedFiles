.class Lcom/sec/android/cover/clearcover/ClearCoverPage$2;
.super Ljava/lang/Object;
.source "ClearCoverPage.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/ClearCoverPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/ClearCoverPage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$2;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p1}, Landroid/view/View;->requestAccessibilityFocus()Z

    const/4 v0, 0x0

    return v0
.end method
