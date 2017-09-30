.class public Lcom/android/incallui/agif/AgifLoader$AgifContentsInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/agif/AgifLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AgifContentsInfo"
.end annotation


# instance fields
.field public agifName:Ljava/lang/String;

.field public contentUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/incallui/agif/AgifLoader;


# direct methods
.method public constructor <init>(Lcom/android/incallui/agif/AgifLoader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifLoader$AgifContentsInfo;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/incallui/agif/AgifLoader$AgifContentsInfo;->contentUri:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/incallui/agif/AgifLoader$AgifContentsInfo;->agifName:Ljava/lang/String;

    return-void
.end method
