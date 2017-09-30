.class Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field networkName:Landroid/widget/TextView;

.field simcardName:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;


# direct methods
.method private constructor <init>(Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;->this$1:Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;Lcom/android/incallui/SelectSimActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;-><init>(Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;)V

    return-void
.end method
