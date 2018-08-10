.class Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$4;
.super Ljava/lang/Object;
.source "LocaleDragAndDropAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->showSetDefaultLocaleDialog(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$4;->this$0:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$4;->this$0:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->-set1(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$4;->this$0:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->-set0(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$4;->this$0:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$4;->this$0:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->doTheUpdate()V

    return-void
.end method
