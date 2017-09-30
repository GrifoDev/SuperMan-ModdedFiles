.class public Lcom/android/incallui/wrapper/InternalRWrapper$bool;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/wrapper/InternalRWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "bool"
.end annotation


# static fields
.field public static final config_showNavigationBar:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.android.internal.R$bool"

    const-string v1, "config_showNavigationBar"

    invoke-static {v0, v1}, Lcom/android/incallui/wrapper/InternalRWrapper;->access$000(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/incallui/wrapper/InternalRWrapper$bool;->config_showNavigationBar:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
