.class Lcom/android/launcher2/HomeScreenOptionMenu$1;
.super Ljava/lang/Object;
.source "HomeScreenOptionMenu.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeScreenOptionMenu;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeScreenOptionMenu;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeScreenOptionMenu$1;->this$0:Lcom/android/launcher2/HomeScreenOptionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu$1;->this$0:Lcom/android/launcher2/HomeScreenOptionMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/XmlBackup;->LauncherExtractor(Landroid/content/Context;)V

    const/4 v0, 0x0

    return v0
.end method
