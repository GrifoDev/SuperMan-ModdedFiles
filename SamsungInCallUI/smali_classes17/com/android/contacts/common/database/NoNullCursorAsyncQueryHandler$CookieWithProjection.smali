.class Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler$CookieWithProjection;
.super Ljava/lang/Object;
.source "NoNullCursorAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CookieWithProjection"
.end annotation


# instance fields
.field public final originalCookie:Ljava/lang/Object;

.field public final projection:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 0
    .param p1, "cookie"    # Ljava/lang/Object;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler$CookieWithProjection;->originalCookie:Ljava/lang/Object;

    .line 67
    iput-object p2, p0, Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler$CookieWithProjection;->projection:[Ljava/lang/String;

    .line 68
    return-void
.end method
