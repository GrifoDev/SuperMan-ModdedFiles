.class Lcom/android/contacts/common/list/ContactListItemView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/list/ContactListItemView;->a(ZLcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/contacts/common/list/ContactListItemView;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/ContactListItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView$1;->a:Lcom/android/contacts/common/list/ContactListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView$1;->a:Lcom/android/contacts/common/list/ContactListItemView;

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListItemView;->a(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView$1;->a:Lcom/android/contacts/common/list/ContactListItemView;

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListItemView;->a(Lcom/android/contacts/common/list/ContactListItemView;)Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView$1;->a:Lcom/android/contacts/common/list/ContactListItemView;

    invoke-static {v1}, Lcom/android/contacts/common/list/ContactListItemView;->b(Lcom/android/contacts/common/list/ContactListItemView;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;->a(I)V

    :cond_0
    return-void
.end method
