.class Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "listAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private item:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;


# direct methods
.method public constructor <init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p4, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;->item:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$100(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f040197

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$ViewHolder;

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$ViewHolder;-><init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$1;)V

    const v0, 0x7f1004c3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    new-instance v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$1;-><init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v2, v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setFocusable(Z)V

    iget-object v0, v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setClickable(Z)V

    iget-object v0, v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setId(I)V

    iget-object v0, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$800(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0
.end method
