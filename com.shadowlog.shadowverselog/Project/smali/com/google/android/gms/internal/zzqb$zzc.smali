.class Lcom/google/android/gms/internal/zzqb$zzc;
.super Lcom/google/android/gms/internal/zzqb$zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzc"
.end annotation


# instance fields
.field final synthetic tG:Lcom/google/android/gms/internal/zzqb;

.field private final tM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqb;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqb$zzc;->tG:Lcom/google/android/gms/internal/zzqb;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzqb$zzf;-><init>(Lcom/google/android/gms/internal/zzqb;Lcom/google/android/gms/internal/zzqb$1;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqb$zzc;->tM:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public zzapi()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb$zzc;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqb;->zzd(Lcom/google/android/gms/internal/zzqb;)Lcom/google/android/gms/internal/zzqf;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqf;->sX:Lcom/google/android/gms/internal/zzqd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqb$zzc;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqb;->zzg(Lcom/google/android/gms/internal/zzqb;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzqd;->tZ:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb$zzc;->tM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqb$zzc;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqb;->zzh(Lcom/google/android/gms/internal/zzqb;)Lcom/google/android/gms/common/internal/zzq;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqb$zzc;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzqb;->zzd(Lcom/google/android/gms/internal/zzqb;)Lcom/google/android/gms/internal/zzqf;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/zzqf;->sX:Lcom/google/android/gms/internal/zzqd;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzqd;->tZ:Ljava/util/Set;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/common/api/Api$zze;->zza(Lcom/google/android/gms/common/internal/zzq;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    return-void
.end method
