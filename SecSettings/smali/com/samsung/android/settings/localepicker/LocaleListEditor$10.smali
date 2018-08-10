.class Lcom/samsung/android/settings/localepicker/LocaleListEditor$10;
.super Ljava/lang/Object;
.source "LocaleListEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V
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

    iput-object p1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$10;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$10;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-set1(Lcom/samsung/android/settings/localepicker/LocaleListEditor;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$10;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-set2(Lcom/samsung/android/settings/localepicker/LocaleListEditor;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$10;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-get0(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->removeChecked()V

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$10;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-wrap3(Lcom/samsung/android/settings/localepicker/LocaleListEditor;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$10;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-get0(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->doTheUpdate()V

    return-void
.end method
