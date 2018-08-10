.class Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter$1;
.super Ljava/lang/Object;
.source "AppShortcutList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->createAppListInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

.field final synthetic val$row:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter$1;->this$1:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter$1;->val$row:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string/jumbo v1, "left"

    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter$1;->this$1:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v2}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get6(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter$1;->this$1:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter$1;->this$1:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter$1;->this$1:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter$1;->val$row:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->-wrap0(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter$1;->this$1:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0
.end method
