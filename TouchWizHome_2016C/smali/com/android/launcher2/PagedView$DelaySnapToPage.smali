.class Lcom/android/launcher2/PagedView$DelaySnapToPage;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelaySnapToPage"
.end annotation


# instance fields
.field private mDirection:I

.field private mDuration:I

.field private mPageIndex:I

.field final synthetic this$0:Lcom/android/launcher2/PagedView;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/PagedView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PagedView$DelaySnapToPage;->this$0:Lcom/android/launcher2/PagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/PagedView;Lcom/android/launcher2/PagedView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView$DelaySnapToPage;-><init>(Lcom/android/launcher2/PagedView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/PagedView$DelaySnapToPage;->this$0:Lcom/android/launcher2/PagedView;

    iget v1, p0, Lcom/android/launcher2/PagedView$DelaySnapToPage;->mPageIndex:I

    iget v2, p0, Lcom/android/launcher2/PagedView$DelaySnapToPage;->mDuration:I

    iget v3, p0, Lcom/android/launcher2/PagedView$DelaySnapToPage;->mDirection:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/PagedView;->access$600(Lcom/android/launcher2/PagedView;III)V

    return-void
.end method

.method public setup(III)V
    .locals 1

    iput p1, p0, Lcom/android/launcher2/PagedView$DelaySnapToPage;->mPageIndex:I

    iput p2, p0, Lcom/android/launcher2/PagedView$DelaySnapToPage;->mDuration:I

    iput p3, p0, Lcom/android/launcher2/PagedView$DelaySnapToPage;->mDirection:I

    iget-object v0, p0, Lcom/android/launcher2/PagedView$DelaySnapToPage;->this$0:Lcom/android/launcher2/PagedView;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/PagedView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method
