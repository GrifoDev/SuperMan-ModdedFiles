.class Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;
.super Ljava/lang/Object;
.source "LocaleDragAndDropAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onBindViewHolder(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

.field final synthetic val$dragCell:Lcom/android/settings/localepicker/LocaleDragCell;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/android/settings/localepicker/LocaleDragCell;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->val$dragCell:Lcom/android/settings/localepicker/LocaleDragCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->val$dragCell:Lcom/android/settings/localepicker/LocaleDragCell;

    invoke-virtual {v1}, Lcom/android/settings/localepicker/LocaleDragCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-get0(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$AdapterCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$AdapterCallback;->checkChanged()V

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
