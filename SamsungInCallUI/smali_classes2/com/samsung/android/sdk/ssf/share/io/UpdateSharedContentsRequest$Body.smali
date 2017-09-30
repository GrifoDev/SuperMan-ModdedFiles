.class public Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest$Body;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Body"
.end annotation


# instance fields
.field private contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/share/io/ContentForShare;",
            ">;"
        }
    .end annotation
.end field

.field private create_share_code:Z


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/share/io/ContentForShare;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest$Body;->contents:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest$Body;->create_share_code:Z

    return-void
.end method


# virtual methods
.method public setCreate_share_code(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest$Body;->create_share_code:Z

    return-void
.end method
