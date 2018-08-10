.class final synthetic Landroid/app/-$Lambda$vZ1qb742P9hE4drBY-TrOZB_qKo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/PendingIntent$OnMarshaledListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/app/PendingIntent;Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/app/-$Lambda$vZ1qb742P9hE4drBY-TrOZB_qKo;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/-$Lambda$vZ1qb742P9hE4drBY-TrOZB_qKo;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/app/Notification;->lambda$-android_app_Notification_85928(Landroid/os/Parcel;Landroid/app/PendingIntent;Landroid/os/Parcel;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$Lambda$vZ1qb742P9hE4drBY-TrOZB_qKo;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Landroid/app/-$Lambda$vZ1qb742P9hE4drBY-TrOZB_qKo;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onMarshaled(Landroid/app/PendingIntent;Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/-$Lambda$vZ1qb742P9hE4drBY-TrOZB_qKo;->$m$0(Landroid/app/PendingIntent;Landroid/os/Parcel;I)V

    return-void
.end method
