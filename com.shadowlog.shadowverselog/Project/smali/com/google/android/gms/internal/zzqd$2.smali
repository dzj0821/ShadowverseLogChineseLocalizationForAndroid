.class Lcom/google/android/gms/internal/zzqd$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzqd;->clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ug:Lcom/google/android/gms/internal/zzqd;

.field final synthetic uh:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic ui:Lcom/google/android/gms/internal/zzqz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqd;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/zzqz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqd$2;->ug:Lcom/google/android/gms/internal/zzqd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqd$2;->uh:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqd$2;->ui:Lcom/google/android/gms/internal/zzqz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd$2;->ug:Lcom/google/android/gms/internal/zzqd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd$2;->uh:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqd$2;->ui:Lcom/google/android/gms/internal/zzqz;

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzqd;->zza(Lcom/google/android/gms/internal/zzqd;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzqz;Z)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
