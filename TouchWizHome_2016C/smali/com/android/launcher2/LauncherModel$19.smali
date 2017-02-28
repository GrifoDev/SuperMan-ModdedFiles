.class Lcom/android/launcher2/LauncherModel$19;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->addShortcutToHotseatHomeOnly(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;ILcom/android/launcher2/HomeView;Lcom/android/launcher2/Hotseat;Lcom/android/launcher2/LauncherModel$Callbacks;ZLcom/android/launcher2/BaseItem$Type;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;

.field final synthetic val$cellHome:Lcom/android/launcher2/CellLayoutHotseat;

.field final synthetic val$item:Lcom/android/launcher2/HomeShortcutItem;

.field final synthetic val$mHotseat:Lcom/android/launcher2/Hotseat;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/CellLayoutHotseat;Lcom/android/launcher2/HomeShortcutItem;Lcom/android/launcher2/Hotseat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$19;->this$0:Lcom/android/launcher2/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$19;->val$cellHome:Lcom/android/launcher2/CellLayoutHotseat;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$19;->val$item:Lcom/android/launcher2/HomeShortcutItem;

    iput-object p4, p0, Lcom/android/launcher2/LauncherModel$19;->val$mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$19;->val$cellHome:Lcom/android/launcher2/CellLayoutHotseat;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$19;->val$item:Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutHotseat;->addItem(Lcom/android/launcher2/BaseItem;)Z

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$19;->val$mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->reapplyIconViewStyles()V

    return-void
.end method
