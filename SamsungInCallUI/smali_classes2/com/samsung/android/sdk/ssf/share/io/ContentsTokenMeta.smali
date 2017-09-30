.class public Lcom/samsung/android/sdk/ssf/share/io/ContentsTokenMeta;
.super Ljava/lang/Object;


# instance fields
.field public contents_token:Ljava/lang/String;

.field public expired_time:J

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/ContentsTokenMeta;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/ContentsTokenMeta;->contents_token:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/share/io/ContentsTokenMeta;->expired_time:J

    return-void
.end method
