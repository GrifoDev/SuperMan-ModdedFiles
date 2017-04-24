.class public final Lcom/google/android/gms/games/GamesClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/GamesClient$1;,
        Lcom/google/android/gms/games/GamesClient$Builder;
    }
.end annotation


# static fields
.field public static final EXTRA_EXCLUSIVE_BIT_MASK:Ljava/lang/String; = "exclusive_bit_mask"

.field public static final EXTRA_INVITATION:Ljava/lang/String; = "invitation"

.field public static final EXTRA_MAX_AUTOMATCH_PLAYERS:Ljava/lang/String; = "max_automatch_players"

.field public static final EXTRA_MIN_AUTOMATCH_PLAYERS:Ljava/lang/String; = "min_automatch_players"

.field public static final EXTRA_PLAYERS:Ljava/lang/String; = "players"

.field public static final EXTRA_ROOM:Ljava/lang/String; = "room"

.field public static final MAX_RELIABLE_MESSAGE_LEN:I = 0x578

.field public static final MAX_UNRELIABLE_MESSAGE_LEN:I = 0x490

.field public static final NOTIFICATION_TYPES_ALL:I = -0x1

.field public static final NOTIFICATION_TYPES_MULTIPLAYER:I = 0x1

.field public static final NOTIFICATION_TYPE_INVITATION:I = 0x1

.field public static final STATUS_ACHIEVEMENT_NOT_INCREMENTAL:I = 0xbba

.field public static final STATUS_ACHIEVEMENT_UNKNOWN:I = 0xbb9

.field public static final STATUS_ACHIEVEMENT_UNLOCKED:I = 0xbbb

.field public static final STATUS_ACHIEVEMENT_UNLOCK_FAILURE:I = 0xbb8

.field public static final STATUS_CLIENT_RECONNECT_REQUIRED:I = 0x2

.field public static final STATUS_INTERNAL_ERROR:I = 0x1

.field public static final STATUS_INVALID_REAL_TIME_ROOM_ID:I = 0x1b5a

.field public static final STATUS_LICENSE_CHECK_FAILED:I = 0x7

.field public static final STATUS_MULTIPLAYER_ERROR_CREATION_NOT_ALLOWED:I = 0x1770

.field public static final STATUS_MULTIPLAYER_ERROR_NOT_TRUSTED_TESTER:I = 0x1771

.field public static final STATUS_NETWORK_ERROR_NO_DATA:I = 0x4

.field public static final STATUS_NETWORK_ERROR_OPERATION_DEFERRED:I = 0x5

.field public static final STATUS_NETWORK_ERROR_OPERATION_FAILED:I = 0x6

.field public static final STATUS_NETWORK_ERROR_STALE_DATA:I = 0x3

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_PARTICIPANT_NOT_CONNECTED:I = 0x1b5b

.field public static final STATUS_REAL_TIME_CONNECTION_FAILED:I = 0x1b58

.field public static final STATUS_REAL_TIME_INACTIVE_ROOM:I = 0x1b5d

.field public static final STATUS_REAL_TIME_MESSAGE_FAILED:I = -0x1

.field public static final STATUS_REAL_TIME_MESSAGE_SEND_FAILED:I = 0x1b59

.field public static final STATUS_REAL_TIME_ROOM_NOT_JOINED:I = 0x1b5c


# instance fields
.field private final dt:Lcom/google/android/gms/internal/au;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;ILandroid/view/View;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/au;

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/au;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;ILandroid/view/View;Z)V

    iput-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;ILandroid/view/View;Lcom/google/android/gms/games/GamesClient$1;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/google/android/gms/games/GamesClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public clearAllNotifications()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/au;->clearNotifications(I)V

    return-void
.end method

.method public clearNotifications(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->clearNotifications(I)V

    return-void
.end method

.method public connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->connect()V

    return-void
.end method

.method public createRoom(Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->createRoom(Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V

    return-void
.end method

.method public declineRoomInvitation(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/au;->i(Ljava/lang/String;I)V

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->disconnect()V

    return-void
.end method

.method public dismissRoomInvitation(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/au;->h(Ljava/lang/String;I)V

    return-void
.end method

.method public getAchievementsIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->getAchievementsIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getAllLeaderboardsIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->getAllLeaderboardsIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentGame()Lcom/google/android/gms/games/Game;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->getCurrentGame()Lcom/google/android/gms/games/Game;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPlayer()Lcom/google/android/gms/games/Player;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->getCurrentPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPlayerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->getCurrentPlayerId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInvitationInboxIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->getInvitationInboxIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getLeaderboardIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->getLeaderboardIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getRealTimeSocketForParticipant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/games/RealTimeSocket;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/au;->getRealTimeSocketForParticipant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/games/RealTimeSocket;

    move-result-object v0

    return-object v0
.end method

.method public getRealTimeWaitingRoomIntent(Lcom/google/android/gms/games/multiplayer/realtime/Room;I)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/au;->getRealTimeWaitingRoomIntent(Lcom/google/android/gms/games/multiplayer/realtime/Room;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getSelectPlayersIntent(II)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/au;->getSelectPlayersIntent(II)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public incrementAchievement(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/au;->a(Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;Ljava/lang/String;I)V

    return-void
.end method

.method public incrementAchievementImmediate(Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/au;->a(Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;Ljava/lang/String;I)V

    return-void
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->isConnecting()Z

    move-result v0

    return v0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z

    move-result v0

    return v0
.end method

.method public joinRoom(Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->joinRoom(Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V

    return-void
.end method

.method public leaveRoom(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/au;->leaveRoom(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Ljava/lang/String;)V

    return-void
.end method

.method public loadAchievements(Lcom/google/android/gms/games/achievement/OnAchievementsLoadedListener;Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/au;->loadAchievements(Lcom/google/android/gms/games/achievement/OnAchievementsLoadedListener;Z)V

    return-void
.end method

.method public loadGame(Lcom/google/android/gms/games/OnGamesLoadedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->loadGame(Lcom/google/android/gms/games/OnGamesLoadedListener;)V

    return-void
.end method

.method public loadInvitablePlayers(Lcom/google/android/gms/games/OnPlayersLoadedListener;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/google/android/gms/internal/au;->a(Lcom/google/android/gms/games/OnPlayersLoadedListener;IZZ)V

    return-void
.end method

.method public loadInvitations(Lcom/google/android/gms/games/multiplayer/OnInvitationsLoadedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->loadInvitations(Lcom/google/android/gms/games/multiplayer/OnInvitationsLoadedListener;)V

    return-void
.end method

.method public loadLeaderboardMetadata(Lcom/google/android/gms/games/leaderboard/OnLeaderboardMetadataLoadedListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/games/GamesClient;->loadLeaderboardMetadata(Lcom/google/android/gms/games/leaderboard/OnLeaderboardMetadataLoadedListener;Z)V

    return-void
.end method

.method public loadLeaderboardMetadata(Lcom/google/android/gms/games/leaderboard/OnLeaderboardMetadataLoadedListener;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/games/GamesClient;->loadLeaderboardMetadata(Lcom/google/android/gms/games/leaderboard/OnLeaderboardMetadataLoadedListener;Ljava/lang/String;Z)V

    return-void
.end method

.method public loadLeaderboardMetadata(Lcom/google/android/gms/games/leaderboard/OnLeaderboardMetadataLoadedListener;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/au;->loadLeaderboardMetadata(Lcom/google/android/gms/games/leaderboard/OnLeaderboardMetadataLoadedListener;Ljava/lang/String;Z)V

    return-void
.end method

.method public loadLeaderboardMetadata(Lcom/google/android/gms/games/leaderboard/OnLeaderboardMetadataLoadedListener;Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/au;->loadLeaderboardMetadata(Lcom/google/android/gms/games/leaderboard/OnLeaderboardMetadataLoadedListener;Z)V

    return-void
.end method

.method public loadMoreInvitablePlayers(Lcom/google/android/gms/games/OnPlayersLoadedListener;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/au;->a(Lcom/google/android/gms/games/OnPlayersLoadedListener;IZZ)V

    return-void
.end method

.method public loadMoreScores(Lcom/google/android/gms/games/leaderboard/OnLeaderboardScoresLoadedListener;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/au;->loadMoreScores(Lcom/google/android/gms/games/leaderboard/OnLeaderboardScoresLoadedListener;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V

    return-void
.end method

.method public loadPlayer(Lcom/google/android/gms/games/OnPlayersLoadedListener;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/au;->loadPlayer(Lcom/google/android/gms/games/OnPlayersLoadedListener;Ljava/lang/String;)V

    return-void
.end method

.method public loadPlayerCenteredScores(Lcom/google/android/gms/games/leaderboard/OnLeaderboardScoresLoadedListener;Ljava/lang/String;III)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/au;->loadPlayerCenteredScores(Lcom/google/android/gms/games/leaderboard/OnLeaderboardScoresLoadedListener;Ljava/lang/String;IIIZ)V

    return-void
.end method

.method public loadPlayerCenteredScores(Lcom/google/android/gms/games/leaderboard/OnLeaderboardScoresLoadedListener;Ljava/lang/String;IIIZ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/au;->loadPlayerCenteredScores(Lcom/google/android/gms/games/leaderboard/OnLeaderboardScoresLoadedListener;Ljava/lang/String;IIIZ)V

    return-void
.end method

.method public loadTopScores(Lcom/google/android/gms/games/leaderboard/OnLeaderboardScoresLoadedListener;Ljava/lang/String;III)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/au;->loadTopScores(Lcom/google/android/gms/games/leaderboard/OnLeaderboardScoresLoadedListener;Ljava/lang/String;IIIZ)V

    return-void
.end method

.method public loadTopScores(Lcom/google/android/gms/games/leaderboard/OnLeaderboardScoresLoadedListener;Ljava/lang/String;IIIZ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/au;->loadTopScores(Lcom/google/android/gms/games/leaderboard/OnLeaderboardScoresLoadedListener;Ljava/lang/String;IIIZ)V

    return-void
.end method

.method public reconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->connect()V

    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public registerInvitationListener(Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->registerInvitationListener(Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V

    return-void
.end method

.method public revealAchievement(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/au;->a(Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;Ljava/lang/String;)V

    return-void
.end method

.method public revealAchievementImmediate(Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/au;->a(Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;Ljava/lang/String;)V

    return-void
.end method

.method public sendReliableRealTimeMessage(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeReliableMessageSentListener;[BLjava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/au;->sendReliableRealTimeMessage(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeReliableMessageSentListener;[BLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendUnreliableRealTimeMessage([BLjava/lang/String;Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/au;->a([BLjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendUnreliableRealTimeMessage([BLjava/lang/String;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/gms/internal/au;->a([BLjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendUnreliableRealTimeMessageToAll([BLjava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/au;->sendUnreliableRealTimeMessageToAll([BLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setGravityForPopups(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->setGravityForPopups(I)V

    return-void
.end method

.method public setUseNewPlayerNotificationsFirstParty(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->setUseNewPlayerNotificationsFirstParty(Z)V

    return-void
.end method

.method public setViewForPopups(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/s;->d(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->setViewForPopups(Landroid/view/View;)V

    return-void
.end method

.method public signOut()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/au;->signOut(Lcom/google/android/gms/games/OnSignOutCompleteListener;)V

    return-void
.end method

.method public signOut(Lcom/google/android/gms/games/OnSignOutCompleteListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->signOut(Lcom/google/android/gms/games/OnSignOutCompleteListener;)V

    return-void
.end method

.method public submitScore(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/au;->a(Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;Ljava/lang/String;J)V

    return-void
.end method

.method public submitScoreImmediate(Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/au;->a(Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;Ljava/lang/String;J)V

    return-void
.end method

.method public unlockAchievement(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/au;->b(Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;Ljava/lang/String;)V

    return-void
.end method

.method public unlockAchievementImmediate(Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/au;->b(Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public unregisterInvitationListener()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->unregisterInvitationListener()V

    return-void
.end method
