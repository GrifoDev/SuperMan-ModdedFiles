.class Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$1;
.super Ljava/lang/Object;
.source "IrisPreveiwStyleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$1;->this$1:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

    iput p2, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$1;->val$position:I

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$1;->this$1:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->-get0(Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$1;->this$1:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

    invoke-static {v0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->-get0(Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$1;->this$1:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->this$0:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mIrisPreviewImages:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$1;->this$1:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->this$0:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->-wrap0(Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "iris_preview_style"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$1;->this$1:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->this$0:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$1;->this$1:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->this$0:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b029b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$1;->val$position:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$1;->this$1:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->this$0:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$1;->this$1:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->this$0:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->-wrap0(Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "iris_preview_style"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mStyleNum:I

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$1;->this$1:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$1;->this$1:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->this$0:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$1;->this$1:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->this$0:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->-wrap0(Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "iris_preview_style"

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$1;->val$position:I

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method
