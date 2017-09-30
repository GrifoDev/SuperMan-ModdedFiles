.class public Lcom/android/incallui/agif/AgifLoader$RecommendedContents;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/agif/AgifLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecommendedContents"
.end annotation


# instance fields
.field public contentUri:Landroid/net/Uri;

.field public name:Ljava/lang/String;

.field public newBadge:Z

.field public packageName:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/incallui/agif/AgifLoader;


# direct methods
.method public constructor <init>(Lcom/android/incallui/agif/AgifLoader;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/agif/AgifLoader$RecommendedContents;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/incallui/agif/AgifLoader$RecommendedContents;->contentUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/incallui/agif/AgifLoader$RecommendedContents;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/incallui/agif/AgifLoader$RecommendedContents;->price:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/incallui/agif/AgifLoader$RecommendedContents;->packageName:Ljava/lang/String;

    const-string v0, "TRUE"

    invoke-virtual {v0, p6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/agif/AgifLoader$RecommendedContents;->newBadge:Z

    return-void
.end method
