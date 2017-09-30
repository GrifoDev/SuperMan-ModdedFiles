.class Lcom/android/incallui/agif/AgifRecommendImageAdapter$ViewHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/agif/AgifRecommendImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field contentImage:Lcom/android/incallui/agif/AgifImageView;

.field contentPrice:Landroid/widget/TextView;

.field contentTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/incallui/agif/AgifRecommendImageAdapter;


# direct methods
.method private constructor <init>(Lcom/android/incallui/agif/AgifRecommendImageAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifRecommendImageAdapter$ViewHolder;->this$0:Lcom/android/incallui/agif/AgifRecommendImageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/agif/AgifRecommendImageAdapter;Lcom/android/incallui/agif/AgifRecommendImageAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/agif/AgifRecommendImageAdapter$ViewHolder;-><init>(Lcom/android/incallui/agif/AgifRecommendImageAdapter;)V

    return-void
.end method
