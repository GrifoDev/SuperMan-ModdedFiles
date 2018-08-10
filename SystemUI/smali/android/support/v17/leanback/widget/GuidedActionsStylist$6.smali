.class Landroid/support/v17/leanback/widget/GuidedActionsStylist$6;
.super Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;
.source "GuidedActionsStylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/GuidedActionsStylist;->startExpanded(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$6;->this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-direct {p0}, Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$6;->mRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Ljava/lang/Object;)Landroid/graphics/Rect;
    .locals 3

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$6;->this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getKeyLine()I

    move-result v1

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$6;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$6;->mRect:Landroid/graphics/Rect;

    return-object v2
.end method
