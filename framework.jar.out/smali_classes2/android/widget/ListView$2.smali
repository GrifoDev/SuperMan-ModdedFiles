.class Landroid/widget/ListView$2;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ListView;->onFocusChanged(ZILandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ListView$2;->this$0:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/widget/ListView$2;->this$0:Landroid/widget/ListView;

    invoke-static {v0}, Landroid/widget/ListView;->-get0(Landroid/widget/ListView;)Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->speakDescriptionForAccessibility()V

    return-void
.end method
