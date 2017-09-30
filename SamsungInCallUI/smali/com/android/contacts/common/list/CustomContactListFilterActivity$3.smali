.class Lcom/android/contacts/common/list/CustomContactListFilterActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/list/CustomContactListFilterActivity;->a(Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

.field final synthetic b:Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

.field final synthetic c:Lcom/android/contacts/common/list/CustomContactListFilterActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/CustomContactListFilterActivity;Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$3;->c:Lcom/android/contacts/common/list/CustomContactListFilterActivity;

    iput-object p2, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$3;->a:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    iput-object p3, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$3;->b:Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$3;->a:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    iget-object v1, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$3;->a:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    iget-object v1, v1, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->d:Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->a(Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$3;->a:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    iget-object v1, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$3;->b:Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->a(Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$3;->c:Lcom/android/contacts/common/list/CustomContactListFilterActivity;

    invoke-static {v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->a(Lcom/android/contacts/common/list/CustomContactListFilterActivity;)Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->notifyDataSetChanged()V

    return-void
.end method
