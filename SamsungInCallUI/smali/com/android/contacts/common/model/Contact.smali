.class public Lcom/android/contacts/common/model/Contact;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/Contact$Status;
    }
.end annotation


# instance fields
.field private final A:Z

.field private final B:Ljava/lang/String;

.field private final C:Z

.field private final D:Lcom/android/contacts/common/model/Contact$Status;

.field private final E:Ljava/lang/Exception;

.field private final a:Landroid/net/Uri;

.field private final b:Landroid/net/Uri;

.field private final c:Landroid/net/Uri;

.field private final d:J

.field private final e:Ljava/lang/String;

.field private final f:J

.field private final g:J

.field private final h:I

.field private final i:J

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Z

.field private final o:Ljava/lang/Integer;

.field private p:Lcom/google/a/b/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/m",
            "<",
            "Lcom/android/contacts/common/model/RawContact;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/google/a/b/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/n",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/common/util/DataStatus;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/google/a/b/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/m",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:I

.field private x:Lcom/google/a/b/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/m",
            "<",
            "Lcom/android/contacts/common/GroupMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private y:[B

.field private z:[B


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/android/contacts/common/model/Contact$Status;->a:Lcom/android/contacts/common/model/Contact$Status;

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->D:Lcom/android/contacts/common/model/Contact$Status;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->E:Ljava/lang/Exception;

    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->a:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/contacts/common/model/Contact;->b:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/contacts/common/model/Contact;->c:Landroid/net/Uri;

    iput-wide p4, p0, Lcom/android/contacts/common/model/Contact;->d:J

    iput-object p6, p0, Lcom/android/contacts/common/model/Contact;->e:Ljava/lang/String;

    iput-wide p7, p0, Lcom/android/contacts/common/model/Contact;->f:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->p:Lcom/google/a/b/m;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->q:Lcom/google/a/b/n;

    iput-wide p9, p0, Lcom/android/contacts/common/model/Contact;->g:J

    iput p11, p0, Lcom/android/contacts/common/model/Contact;->h:I

    iput-wide p12, p0, Lcom/android/contacts/common/model/Contact;->i:J

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->j:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->k:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->l:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->m:Ljava/lang/String;

    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->n:Z

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->o:Ljava/lang/Integer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->r:Lcom/google/a/b/m;

    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->A:Z

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->B:Ljava/lang/String;

    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->C:Z

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/android/contacts/common/model/Contact$Status;Ljava/lang/Exception;)V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/contacts/common/model/Contact$Status;->b:Lcom/android/contacts/common/model/Contact$Status;

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ERROR result must have exception"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/android/contacts/common/model/Contact;->D:Lcom/android/contacts/common/model/Contact$Status;

    iput-object p3, p0, Lcom/android/contacts/common/model/Contact;->E:Ljava/lang/Exception;

    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->a:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->b:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->c:Landroid/net/Uri;

    iput-wide v4, p0, Lcom/android/contacts/common/model/Contact;->d:J

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->e:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/contacts/common/model/Contact;->f:J

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->p:Lcom/google/a/b/m;

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->q:Lcom/google/a/b/n;

    iput-wide v4, p0, Lcom/android/contacts/common/model/Contact;->g:J

    iput v2, p0, Lcom/android/contacts/common/model/Contact;->h:I

    iput-wide v4, p0, Lcom/android/contacts/common/model/Contact;->i:J

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->m:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->n:Z

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->o:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->r:Lcom/google/a/b/m;

    iput-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->A:Z

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->B:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->C:Z

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/android/contacts/common/model/Contact;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->a:Landroid/net/Uri;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->D:Lcom/android/contacts/common/model/Contact$Status;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->D:Lcom/android/contacts/common/model/Contact$Status;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->E:Ljava/lang/Exception;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->E:Ljava/lang/Exception;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->b:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->b:Landroid/net/Uri;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->c:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->c:Landroid/net/Uri;

    iget-wide v0, p2, Lcom/android/contacts/common/model/Contact;->d:J

    iput-wide v0, p0, Lcom/android/contacts/common/model/Contact;->d:J

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->e:Ljava/lang/String;

    iget-wide v0, p2, Lcom/android/contacts/common/model/Contact;->f:J

    iput-wide v0, p0, Lcom/android/contacts/common/model/Contact;->f:J

    iget-wide v0, p2, Lcom/android/contacts/common/model/Contact;->g:J

    iput-wide v0, p0, Lcom/android/contacts/common/model/Contact;->g:J

    iget v0, p2, Lcom/android/contacts/common/model/Contact;->h:I

    iput v0, p0, Lcom/android/contacts/common/model/Contact;->h:I

    iget-wide v0, p2, Lcom/android/contacts/common/model/Contact;->i:J

    iput-wide v0, p0, Lcom/android/contacts/common/model/Contact;->i:J

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->j:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->k:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->l:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->m:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/android/contacts/common/model/Contact;->n:Z

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->n:Z

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->o:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->o:Ljava/lang/Integer;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->p:Lcom/google/a/b/m;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->p:Lcom/google/a/b/m;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->q:Lcom/google/a/b/n;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->q:Lcom/google/a/b/n;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->r:Lcom/google/a/b/m;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->r:Lcom/google/a/b/m;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->s:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->t:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->u:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->v:Ljava/lang/String;

    iget v0, p2, Lcom/android/contacts/common/model/Contact;->w:I

    iput v0, p0, Lcom/android/contacts/common/model/Contact;->w:I

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->x:Lcom/google/a/b/m;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->x:Lcom/google/a/b/m;

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->y:[B

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->y:[B

    iget-boolean v0, p2, Lcom/android/contacts/common/model/Contact;->A:Z

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->A:Z

    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->B:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->B:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/android/contacts/common/model/Contact;->C:Z

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->C:Z

    return-void
.end method

.method public static a(Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    .locals 3

    new-instance v0, Lcom/android/contacts/common/model/Contact;

    sget-object v1, Lcom/android/contacts/common/model/Contact$Status;->c:Lcom/android/contacts/common/model/Contact$Status;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Lcom/android/contacts/common/model/Contact$Status;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static a(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/common/model/Contact;
    .locals 2

    new-instance v0, Lcom/android/contacts/common/model/Contact;

    sget-object v1, Lcom/android/contacts/common/model/Contact$Status;->b:Lcom/android/contacts/common/model/Contact$Status;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Lcom/android/contacts/common/model/Contact$Status;Ljava/lang/Exception;)V

    return-object v0
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->b:Landroid/net/Uri;

    return-object v0
.end method

.method a(Lcom/google/a/b/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/m",
            "<",
            "Lcom/android/contacts/common/model/RawContact;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->p:Lcom/google/a/b/m;

    return-void
.end method

.method a(Lcom/google/a/b/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/n",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/common/util/DataStatus;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->q:Lcom/google/a/b/n;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->s:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/contacts/common/model/Contact;->t:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/contacts/common/model/Contact;->u:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/contacts/common/model/Contact;->v:Ljava/lang/String;

    iput p5, p0, Lcom/android/contacts/common/model/Contact;->w:I

    return-void
.end method

.method a([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->y:[B

    return-void
.end method

.method b(Lcom/google/a/b/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/m",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->r:Lcom/google/a/b/m;

    return-void
.end method

.method b([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->z:[B

    return-void
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->D:Lcom/android/contacts/common/model/Contact$Status;

    sget-object v1, Lcom/android/contacts/common/model/Contact$Status;->a:Lcom/android/contacts/common/model/Contact$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/common/model/Contact;->i:J

    return-wide v0
.end method

.method c(Lcom/google/a/b/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/m",
            "<",
            "Lcom/android/contacts/common/GroupMetaData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->x:Lcom/google/a/b/m;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->j:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/google/a/b/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/m",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->r:Lcom/google/a/b/m;

    return-object v0
.end method

.method public f()Lcom/google/a/b/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/m",
            "<",
            "Lcom/android/contacts/common/model/RawContact;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->p:Lcom/google/a/b/m;

    return-object v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/common/model/Contact;->d:J

    return-wide v0
.end method

.method public h()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/contacts/common/model/Contact;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/common/model/Contact;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/common/model/Contact;->d:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()[B
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->z:[B

    return-object v0
.end method

.method public j()Lcom/google/a/b/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/m",
            "<",
            "Lcom/android/contacts/common/GroupMetaData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->x:Lcom/google/a/b/m;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->C:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{requested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/Contact;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",lookupkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/Contact;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/Contact;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/Contact;->D:Lcom/android/contacts/common/model/Contact$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
