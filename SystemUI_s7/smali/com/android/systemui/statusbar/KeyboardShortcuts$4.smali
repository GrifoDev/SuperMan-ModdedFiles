.class Lcom/android/systemui/statusbar/KeyboardShortcuts$4;
.super Ljava/lang/Object;
.source "KeyboardShortcuts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyboardShortcuts;->showKeyboardShortcutsDialog(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

.field final synthetic val$keyboardShortcutGroups:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$4;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$4;->val$keyboardShortcutGroups:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$4;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$4;->val$keyboardShortcutGroups:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->-wrap3(Lcom/android/systemui/statusbar/KeyboardShortcuts;Ljava/util/List;)V

    return-void
.end method
