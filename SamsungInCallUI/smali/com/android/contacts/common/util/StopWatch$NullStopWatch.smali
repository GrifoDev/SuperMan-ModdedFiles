.class Lcom/android/contacts/common/util/StopWatch$NullStopWatch;
.super Lcom/android/contacts/common/util/StopWatch;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/util/StopWatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullStopWatch"
.end annotation


# static fields
.field public static final a:Lcom/android/contacts/common/util/StopWatch$NullStopWatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/contacts/common/util/StopWatch$NullStopWatch;

    invoke-direct {v0}, Lcom/android/contacts/common/util/StopWatch$NullStopWatch;-><init>()V

    sput-object v0, Lcom/android/contacts/common/util/StopWatch$NullStopWatch;->a:Lcom/android/contacts/common/util/StopWatch$NullStopWatch;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/contacts/common/util/StopWatch;-><init>(Ljava/lang/String;Lcom/android/contacts/common/util/StopWatch$1;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
