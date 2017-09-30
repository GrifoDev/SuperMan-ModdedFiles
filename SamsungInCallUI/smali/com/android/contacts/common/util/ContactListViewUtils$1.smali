.class final Lcom/android/contacts/common/util/ContactListViewUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/util/ContactListViewUtils;->a(Landroid/content/res/Resources;Landroid/widget/ListView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:I

.field final synthetic d:I


# direct methods
.method constructor <init>(Landroid/widget/ListView;Landroid/view/View;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/util/ContactListViewUtils$1;->a:Landroid/widget/ListView;

    iput-object p2, p0, Lcom/android/contacts/common/util/ContactListViewUtils$1;->b:Landroid/view/View;

    iput p3, p0, Lcom/android/contacts/common/util/ContactListViewUtils$1;->c:I

    iput p4, p0, Lcom/android/contacts/common/util/ContactListViewUtils$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/contacts/common/util/ContactListViewUtils$1;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/common/util/ContactListViewUtils$1;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/contacts/common/util/ContactListViewUtils$1;->c:I

    iget v3, p0, Lcom/android/contacts/common/util/ContactListViewUtils$1;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/common/util/ContactListViewUtils;->a(Landroid/widget/ListView;III)V

    return-void
.end method
