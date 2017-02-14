.class Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler$InstanceHolder;
.super Ljava/lang/Object;
.source "DSKPPSessionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;-><init>(Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;)V

    sput-object v0, Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler$InstanceHolder;->INSTANCE:Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
