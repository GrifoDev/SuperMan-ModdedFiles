.class Lcom/samsung/android/settings/localepicker/LocaleListEditor$5;
.super Ljava/lang/Object;
.source "LocaleListEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/localepicker/LocaleListEditor;->initActionBarBtn(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$5;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$5;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {v0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$5;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {v1}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$5;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-wrap2(Lcom/samsung/android/settings/localepicker/LocaleListEditor;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$5;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-get0(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->initFeedItemList()V

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$5;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-get0(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyDataSetChanged()V

    return-void
.end method
