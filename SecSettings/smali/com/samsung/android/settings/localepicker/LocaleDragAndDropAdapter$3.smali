.class Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$3;
.super Ljava/lang/Object;
.source "LocaleDragAndDropAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$li:Lcom/android/internal/app/LocaleStore$LocaleInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$3;->val$li:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$3;->val$li:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->-get0(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$3;->val$li:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->-get0(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$3;->val$li:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
