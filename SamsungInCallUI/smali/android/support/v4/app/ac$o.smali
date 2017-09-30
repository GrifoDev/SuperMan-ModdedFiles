.class Landroid/support/v4/app/ac$o;
.super Landroid/support/v4/app/ac$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "o"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/ac$l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/ac$d;Landroid/support/v4/app/ac$e;)Landroid/app/Notification;
    .locals 16

    new-instance v2, Landroid/support/v4/app/aj$a;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/ac$d;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/ac$d;->F:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/ac$d;->b:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/ac$d;->c:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/app/ac$d;->h:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/support/v4/app/ac$d;->f:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/support/v4/app/ac$d;->i:I

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/ac$d;->d:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/support/v4/app/ac$d;->e:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/support/v4/app/ac$d;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/support/v4/app/ac$d;->p:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/v4/app/ac$d;->q:I

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/support/v4/app/ac$d;->r:Z

    invoke-direct/range {v2 .. v15}, Landroid/support/v4/app/aj$a;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)V

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ac$e;->a(Landroid/support/v4/app/ac$d;Landroid/support/v4/app/ab;)Landroid/app/Notification;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/ac$d;->C:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/ac$d;->C:Landroid/widget/RemoteViews;

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_0
    return-object v2
.end method
