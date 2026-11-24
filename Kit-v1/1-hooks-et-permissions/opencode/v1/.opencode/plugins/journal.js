// Journal OpenCode (version 1, paquet « opencode-ai ») : même effet que les hooks de Claude Code.
// Avant chaque commande et chaque skill, une ligne est ajoutée à .opencode/journal-commandes.log
// ou .opencode/journal-skills.log : la date, puis ce que l'outil reçoit.
// Aucune dépendance : le code tourne dans OpenCode lui-même, sans Node installé. Valable sous Windows et Linux.
import { appendFileSync, mkdirSync } from "node:fs"
import { join } from "node:path"

export const Journal = async ({ directory }) => {
  const dossier = join(directory, ".opencode")
  mkdirSync(dossier, { recursive: true })
  return {
    "tool.execute.before": async (input, output) => {
      const fichier = input.tool === "bash" ? "journal-commandes.log" : input.tool === "skill" ? "journal-skills.log" : null
      if (!fichier) return
      const date = new Date().toLocaleString("sv-SE") // 2026-11-24 09:30:00
      appendFileSync(join(dossier, fichier), `${date} ${JSON.stringify({ tool: input.tool, args: output.args })}\n`)
    },
  }
}
