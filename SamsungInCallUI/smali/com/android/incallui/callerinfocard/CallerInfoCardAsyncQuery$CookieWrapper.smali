.class public final Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CookieWrapper"
.end annotation


# instance fields
.field public accountType:Ljava/lang/String;

.field public appType:I

.field public cookie:Ljava/lang/Object;

.field public emailAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public event:I

.field public id:J

.field public listener:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;

.field public sourceId:Ljava/lang/String;

.field public sync2:Ljava/lang/String;

.field public updated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/a/a/d;->a(Ljava/lang/Object;)Lcom/google/a/a/d$a;

    move-result-object v0

    const-string v1, "event : "

    iget v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->event:I

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/d$a;->a(Ljava/lang/String;I)Lcom/google/a/a/d$a;

    move-result-object v0

    const-string v1, "appType : "

    iget v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->appType:I

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/d$a;->a(Ljava/lang/String;I)Lcom/google/a/a/d$a;

    move-result-object v0

    const-string v1, "id : "

    iget-wide v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->id:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/a/d$a;->a(Ljava/lang/String;J)Lcom/google/a/a/d$a;

    move-result-object v0

    const-string v1, "updated : "

    iget-boolean v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->updated:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/d$a;->a(Ljava/lang/String;Z)Lcom/google/a/a/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/d$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
