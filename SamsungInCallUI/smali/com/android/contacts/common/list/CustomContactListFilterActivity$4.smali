.class Lcom/android/contacts/common/list/CustomContactListFilterActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/list/CustomContactListFilterActivity;->a(Landroid/view/ContextMenu;Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

.field final synthetic b:I

.field final synthetic c:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

.field final synthetic d:Lcom/android/contacts/common/list/CustomContactListFilterActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/CustomContactListFilterActivity;Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;ILcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$4;->d:Lcom/android/contacts/common/list/CustomContactListFilterActivity;

    iput-object p2, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$4;->a:Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    iput p3, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$4;->b:I

    iput-object p4, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$4;->c:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$4;->a:Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    invoke-static {v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->a(Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$4;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$4;->c:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->a(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$4;->d:Lcom/android/contacts/common/list/CustomContactListFilterActivity;

    invoke-static {v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->a(Lcom/android/contacts/common/list/CustomContactListFilterActivity;)Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->notifyDataSetChanged()V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$4;->c:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    iget-object v1, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$4;->a:Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->a(Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;Z)V

    goto :goto_0
.end method
