// Journal OpenCode (version 2, paquet « @opencode/cli ») : même effet que les hooks de Claude Code.
// Avant chaque commande et chaque skill, une ligne est ajoutée à .opencode/journal-commandes.log
// ou .opencode/journal-skills.log : la date, puis ce que l'outil reçoit.
// Aucune dépendance : le code tourne dans OpenCode lui-même, sans Node installé. Valable sous Windows et Linux.
import { Plugin } from "@opencode/plugin"
import { appendFileSync, mkdirSync } from "node:fs"
import { join } from "node:path"

export default Plugin.define({
  id: "journal",
  async setup(ctx) {
    const dossier = join(ctx.location.directory, ".opencode")
    mkdirSync(dossier, { recursive: true })
    await ctx.tool.hook("execute.before", (event) => {
      const fichier = (event.tool === "shell" || event.tool === "bash") ? "journal-commandes.log" : event.tool === "skill" ? "journal-skills.log" : null
      if (!fichier) return
      const date = new Date().toLocaleString("sv-SE")
      appendFileSync(join(dossier, fichier), `${date} ${JSON.stringify({ tool: event.tool, input: event.input })}\n`)
    })
  },
})
